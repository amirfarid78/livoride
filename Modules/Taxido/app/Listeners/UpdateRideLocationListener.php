<?php

namespace Modules\Taxido\Listeners;

use Exception;
use Illuminate\Support\Facades\Log;
use Modules\Taxido\Events\RideStatusEvent;
use Modules\Taxido\Events\UpdateRideLocationEvent;

class UpdateRideLocationListener
{
    /**
     * Handle the event.
     */
    public function handle(UpdateRideLocationEvent $event): void
    {
        try {

            if ($event->ride->driver) {
                $driver_id = $event->ride?->driver_id;
                $this->sendPushNotification("user_".$driver_id,$event->ride);
            }

        } catch (Exception $e) {

            Log::error('Ride Status Log Handler ' . $e->getMessage());
        }
    }


    public function sendPushNotification($topic, $ride)
    {
        try {

            if (!$topic) {
                return;
            }

            $riderName = $ride?->rider['name'];
            $formattedLocations = array_map(function($loc) {
                return is_array($loc) ? ($loc['name'] ?? '') : $loc;
            }, $ride->locations ?? []);
            $fromTo = implode(" ➡️ ", $formattedLocations);
            $title = "📍 Ride Location Changed!";
            $body = "Hey {$ride?->driver?->name}! {$riderName} updated the trip route — now it’s {$fromTo}. Keep an eye on your map! 🗺️";
            $notification = [
                'message' => [
                    'topic' => $topic,
                    'notification' => [
                        'title' => $title,
                        'body' => $body,
                        'image' => '',
                    ],
                    'data' => [
                        'click_action' => 'FLUTTER_NOTIFICATION_CLICK',
                        'type' => 'ride_location_changed'
                    ],
                ],
            ];

            pushNotification($notification);

        } catch(Exception $e) {

            Log::error("sendPushNotification.".$e?->getMessage());
        }
    }

}
