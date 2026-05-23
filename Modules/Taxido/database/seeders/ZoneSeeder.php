<?php

namespace Modules\Taxido\Database\Seeders;

use App\Models\User;
use App\Models\Currency;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Modules\Taxido\Models\Zone;
use Modules\Taxido\Models\VehicleType;
use Modules\Taxido\Models\VehicleInfo;
use Modules\Taxido\Models\Driver;
use Modules\Taxido\Enums\RoleEnum;
use MatanYadaev\EloquentSpatial\Objects\Point;
use MatanYadaev\EloquentSpatial\Objects\LineString;
use MatanYadaev\EloquentSpatial\Objects\Polygon;

class ZoneSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // 1. Ensure a currency exists
        $currency = Currency::first();
        if (!$currency) {
            $currency = Currency::create([
                'code' => 'USD',
                'symbol' => '$',
                'flag' => 'US.png',
                'no_of_decimal' => 2,
                'exchange_rate' => 1.0,
                'symbol_position' => 'before_price',
                'system_reserve' => 0,
                'status' => 1
            ]);
        }

        // 2. Create the Universal/Global Zone
        $coordinates = [
            ['lat' => -85.0, 'lng' => -180.0],
            ['lat' => 85.0, 'lng' => -180.0],
            ['lat' => 85.0, 'lng' => 180.0],
            ['lat' => -85.0, 'lng' => 180.0],
            ['lat' => -85.0, 'lng' => -180.0]
        ];

        $points = array_map(function ($coord) {
            return new Point($coord['lat'], $coord['lng']);
        }, $coordinates);

        $lineString = new LineString($points);
        $polygon = new Polygon([$lineString]);

        $admin = User::role('admin')->first() ?? User::first();

        $zone = Zone::updateOrCreate(
            ['name' => 'Universal Zone'],
            [
                'place_points' => $polygon,
                'locations' => $coordinates,
                'payment_method' => ['cash', 'wallet'],
                'amount' => 0,
                'status' => 1,
                'weight_unit' => 'kilogram',
                'distance_type' => 'km',
                'currency_id' => $currency->id,
                'created_by_id' => $admin?->id,
                'peak_zone_geographic_radius' => 2.00,
                'minutes_choosing_peak_zone' => 5,
                'minutes_peak_zone_active' => 60,
                'peak_price_increase_percentage' => 20.00
            ]
        );

        $zone->setTranslation('name', 'en', 'Universal Zone');
        $zone->save();

        // 3. Create Vehicle Type Zone associations for all vehicle types
        $vehicleTypes = VehicleType::all();
        foreach ($vehicleTypes as $vt) {
            DB::table('vehicle_type_zones')->updateOrInsert(
                [
                    'vehicle_type_id' => $vt->id,
                    'zone_id' => $zone->id,
                ],
                [
                    'base_fare_charge' => 10.00,
                    'base_distance' => 2.00,
                    'per_distance_charge' => 2.00,
                    'per_minute_charge' => 0.50,
                    'per_weight_charge' => 1.00,
                    'waiting_charge' => 0.10,
                    'free_waiting_time_before_start_ride' => 5.00,
                    'free_waiting_time_after_start_ride' => 5.00,
                    'cancellation_charge_for_rider' => 5.00,
                    'cancellation_charge_for_driver' => 2.00,
                    'commission_type' => 'percentage',
                    'commission_rate' => 15.00,
                    'created_at' => now(),
                    'updated_at' => now()
                ]
            );
        }

        // 4. Set up default driver vehicle information & location
        $driver = User::role(RoleEnum::DRIVER)->first();
        if ($driver) {
            // Update driver settings to be online, verified and active
            $driver->update([
                'is_verified' => 1,
                'status' => 1,
                'is_online' => 1,
                'can_accept_ride_request' => 1,
                'service_id' => 1, // Cab
                'service_category_id' => 1, // Ride
                'location' => ['lat' => 33.6844, 'lng' => 73.0479] // Islamabad center
            ]);

            // Link Driver to the Zone
            DB::table('driver_zones')->updateOrInsert(
                ['driver_id' => $driver->id, 'zone_id' => $zone->id]
            );

            // Create Vehicle Info for Driver
            $vtCar = VehicleType::where('name', 'Car')->first() ?? VehicleType::first();
            if ($vtCar) {
                VehicleInfo::updateOrCreate(
                    ['driver_id' => $driver->id],
                    [
                        'name' => "Kamran's Car",
                        'description' => "Premium Sedan",
                        'color' => "White",
                        'plate_number' => "ICT-999",
                        'seat' => 4,
                        'model' => "Toyota Corolla",
                        'vehicle_type_id' => $vtCar->id,
                        'model_year' => "2023",
                        'status' => 1,
                        'is_verified' => 1
                    ]
                );
            }
        }

        // 5. Link Dispatcher to Zone
        $dispatcher = User::role(RoleEnum::DISPATCHER)->first();
        if ($dispatcher) {
            DB::table('dispatcher_zones')->updateOrInsert(
                ['dispatcher_id' => $dispatcher->id, 'zone_id' => $zone->id]
            );
        }

        // 6. Ensure Wallets are fully initialized with positive balances
        $rider = User::role(RoleEnum::RIDER)->first();
        if ($rider) {
            DB::table('rider_wallets')->updateOrInsert(
                ['rider_id' => $rider->id],
                [
                    'balance' => 1000.00,
                    'created_at' => now(),
                    'updated_at' => now()
                ]
            );
            $rider->update([
                'is_verified' => 1,
                'status' => 1
            ]);
        }

        if ($driver) {
            DB::table('driver_wallets')->updateOrInsert(
                ['driver_id' => $driver->id],
                [
                    'balance' => 1000.00,
                    'created_at' => now(),
                    'updated_at' => now()
                ]
            );
        }

        $fleet = User::role(RoleEnum::FLEET_MANAGER)->first();
        if ($fleet) {
            DB::table('fleet_manager_wallets')->updateOrInsert(
                ['fleet_manager_id' => $fleet->id],
                [
                    'balance' => 1000.00,
                    'created_at' => now(),
                    'updated_at' => now()
                ]
            );
        }
    }
}
