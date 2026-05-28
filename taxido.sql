-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2026 at 04:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taxido`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'User', 'Administrator - User has been created', 'App\\Models\\User', 'created', 1, NULL, NULL, '{\"attributes\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@example.com\",\"email_verified_at\":\"2026-05-23T10:31:29.000000Z\",\"country_code\":null,\"phone\":0,\"password\":\"$2y$12$nXzVp4IeQzaI3KcvxmmUnu9xMUvi52hmEE51.I40vjedD4hWPgACy\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":1,\"remember_token\":\"7QrsVrrmxU\",\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:30.000000Z\",\"updated_at\":\"2026-05-23T10:31:30.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:30', '2026-05-23 05:31:30'),
(2, 'User', 'Administrator - User has been created', 'App\\Models\\User', 'created', 1, NULL, NULL, '{\"attributes\":{\"id\":1,\"name\":\"Administrator\",\"email\":\"admin@example.com\",\"email_verified_at\":\"2026-05-23T10:31:29.000000Z\",\"country_code\":null,\"phone\":0,\"password\":\"$2y$12$nXzVp4IeQzaI3KcvxmmUnu9xMUvi52hmEE51.I40vjedD4hWPgACy\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":1,\"remember_token\":\"7QrsVrrmxU\",\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:30.000000Z\",\"updated_at\":\"2026-05-23T10:31:30.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:30', '2026-05-23 05:31:30'),
(3, 'User', 'Joseph - User has been created', 'App\\Models\\User', 'created', 2, NULL, NULL, '{\"attributes\":{\"id\":2,\"name\":\"Joseph\",\"email\":\"joseph.user@example.com\",\"email_verified_at\":\"2026-05-23T10:31:31.000000Z\",\"country_code\":null,\"phone\":0,\"password\":\"$2y$12$\\/ls9s2bUk64VIUfv3tblceq\\/aecAD81IOtgx3mYDf.zUyMwoFiXa6\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":1,\"remember_token\":\"UkTyFpPn2h\",\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:31.000000Z\",\"updated_at\":\"2026-05-23T10:31:31.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:31', '2026-05-23 05:31:31'),
(4, 'User', 'Joseph - User has been created', 'App\\Models\\User', 'created', 2, NULL, NULL, '{\"attributes\":{\"id\":2,\"name\":\"Joseph\",\"email\":\"joseph.user@example.com\",\"email_verified_at\":\"2026-05-23T10:31:31.000000Z\",\"country_code\":null,\"phone\":0,\"password\":\"$2y$12$\\/ls9s2bUk64VIUfv3tblceq\\/aecAD81IOtgx3mYDf.zUyMwoFiXa6\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":1,\"remember_token\":\"UkTyFpPn2h\",\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:31.000000Z\",\"updated_at\":\"2026-05-23T10:31:31.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:31', '2026-05-23 05:31:31'),
(5, 'Landing Page', 'Landing Page has been created', 'App\\Models\\LandingPage', 'created', 1, NULL, NULL, '{\"attributes\":{\"id\":1,\"content\":{\"header\":{\"logo\":\"\\/front\\/images\\/placeholder\\/142x36.png\",\"menus\":[\"home\",\"why_taxi_booking\",\"how_it_works\",\"faqs\",\"blogs\",\"testimonials\",\"raise_tickets\"],\"status\":\"1\",\"btn_url\":\"#app\",\"btn_text\":\"Book Ride\"},\"home\":{\"title\":\"Ride with Comfort, Drive with Confidence\",\"description\":\"Where comfort meets confidence\\u2014ride with ease, drive with pride, and let us handle the rest, ensuring every journey is safe, reliable, and truly unforgettable.\",\"button\":[{\"text\":\"User App\",\"type\":\"gradient\",\"url\":\"https:\\/\\/play.google.com\\/store\"},{\"text\":\"Driver App\",\"type\":\"outline\",\"url\":\"https:\\/\\/play.google.com\\/store\"}],\"right_phone_image\":\"\\/front\\/images\\/placeholder\\/1.png\",\"left_phone_image\":\"\\/front\\/images\\/placeholder\\/2.png\",\"bg_image\":\"\",\"status\":\"1\"},\"statistics\":{\"status\":\"1\",\"title\":\"Driving Success Together\",\"description\":\"From countless completed rides to a thriving network of users and drivers, our journey is defined by excellence and customer satisfaction.\",\"counters\":[{\"icon\":\"front\\/images\\/placeholder\\/50x50.png\",\"text\":\"Completed Rides\",\"description\":\"Delivering trusted rides for countless happy Riders daily.\",\"count\":\"100000\"},{\"icon\":\"front\\/images\\/placeholder\\/50x50.png\",\"text\":\"Active Users\",\"description\":\"Connecting with thousands who trust us for reliable rides.\",\"count\":\"50000\"},{\"icon\":\"front\\/images\\/placeholder\\/50x50.png\",\"text\":\"Active Drivers\",\"description\":\"Dedicated drivers ensuring safe, timely, and comfortable rides.\",\"count\":\"30000\"},{\"icon\":\"front\\/images\\/placeholder\\/50x50.png\",\"text\":\"Customer Rating\",\"description\":\"Positive ratings that reflect trust and service excellence.\",\"count\":\"4.9\"}]},\"feature\":{\"status\":\"1\",\"title\":\"Why Taxido Stands Out as Your Go-To Ride Option\",\"description\":\"With Taxido, enjoy affordable rates, safe journeys, and a user-friendly platform that makes travel easier and more enjoyable than ever before.\",\"images\":[{\"image\":\"front\\/images\\/placeholder\\/486x496.png\",\"title\":\"Track Your Driver Live\",\"description\":\"Stay updated on your driver\\u2019s location every moment.\"},{\"image\":\"front\\/images\\/placeholder\\/486x496.png\",\"title\":\"Flexible Vehicle Rentals\",\"description\":\"Choose and rent vehicles tailored to your specific needs.\"},{\"image\":\"front\\/images\\/placeholder\\/486x496.png\",\"title\":\"Bidding Simplified\",\"description\":\"Accept or reject bids effortlessly for complete booking control.\"},{\"image\":\"front\\/images\\/placeholder\\/486x496.png\",\"title\":\"Convenient Hourly Packages\",\"description\":\"Access services in your preferred language without barriers.\"},{\"image\":\"front\\/images\\/placeholder\\/486x496.png\",\"title\":\"Language Options for Everyone\",\"description\":\"Access services in your preferred language without barriers.\"},{\"image\":\"front\\/images\\/placeholder\\/486x496.png\",\"title\":\"Secure Payment Choices\",\"description\":\"Multiple secure payment options to fit your preference.\"}]},\"ride\":{\"status\":\"1\",\"title\":\"How Taxido Makes Your Ride Easy\",\"description\":\"Get started in just a few simple steps. Choose your ride, track your driver, and enjoy a smooth, hassle-free journey with Taxido..\",\"step\":[{\"image\":\"front\\/images\\/placeholder\\/348x701.png\",\"title\":\"Sign Up\",\"description\":\"Create your account in minutes by entering your details\\u2014quick and easy!\"},{\"image\":\"front\\/images\\/placeholder\\/348x701.png\",\"title\":\"Set Your Pickup Location\",\"description\":\"Choose where you\\u2019d like to be picked up and let us handle the rest.\"},{\"image\":\"front\\/images\\/placeholder\\/348x701.png\",\"title\":\"Find Your Driver\",\"description\":\"Get paired with a nearby driver and track their location in real-time..\"},{\"image\":\"front\\/images\\/placeholder\\/348x701.png\",\"title\":\"Complete Your Payment\",\"description\":\"Pay securely using your preferred payment option through our multi-gateway support.\"},{\"image\":\"front\\/images\\/placeholder\\/348x701.png\",\"title\":\"Rate Your Ride\",\"description\":\"Rate your ride and help us improve for even better experiences ahead.\"}]},\"faq\":{\"title\":\"Frequently Asked Questions\",\"sub_title\":\"Got questions? Explore our FAQs for quick answers about Taxido\'s features, services, and app usage. Booking a ride, scheduling, or exploring services? Find all the answers here.\",\"faqs\":[],\"status\":\"1\"},\"blog\":{\"title\":\"Stay Updated with Taxido\",\"sub_title\":\"Be the first to know about exciting offers, latest updates, and helpful travel tips from Taxido. Stay informed and make the most out of your rides with insights and announcements tailored just for you.\",\"blogs\":[],\"status\":\"1\"},\"testimonial\":{\"title\":\"What Our Users Say\",\"sub_title\":\"Real stories from our satisfied users. Taxido is transforming the way people commute, providing safe, reliable, and convenient rides.\",\"testimonials\":[],\"status\":\"1\"},\"footer\":{\"footer_logo\":\"front\\/images\\/placeholder\\/197x50.png\",\"description\":\"Get started in minutes\\u2014choose your ride, track your driver, and enjoy a hassle-free journey with Taxido!\",\"newsletter\":{\"label\":\"Subscribe our Newsletter\",\"placeholder\":\"Enter email address\",\"button_text\":\"Subscribe\"},\"play_store_url\":\"#!\",\"app_store_url\":\"#!\",\"social_links\":{\"facebook\":\"https:\\/\\/www.facebook.com\",\"google\":\"https:\\/\\/www.google.com\",\"instagram\":\"https:\\/\\/www.instagram.com\",\"twitter-x\":\"https:\\/\\/twitter.com\",\"whatsapp\":\"https:\\/\\/wa.me\\/your-number\",\"linkedin\":\"https: \\/\\/linkedin.com\"},\"pages\":[],\"right_image\":\"front\\/images\\/placeholder\\/638x528.png\",\"copyright\":\"\\u00a9 Taxido All Rights & Reserves -\",\"status\":\"1\"},\"seo\":{\"status\":\"1\",\"og_title\":\"Taxido - The Future of Convenient Transportation\",\"meta_tags\":\"taxido, ride-hailing, taxi service, transportation, car service, book a ride, city transport, ride sharing, reliable taxi, on-demand rides.\",\"meta_image\":\"\\/front\\/images\\/logo.svg\",\"meta_title\":\"Taxido - Your Reliable Ride-Hailing Partner\",\"og_description\":\"Discover Taxido, your ultimate ride-hailing solution. Enjoy fast, safe, and reliable transportation at your fingertips. Download our app today for a seamless travel experience.\",\"meta_description\":\"Experience seamless and convenient transportation with Taxido. Book your ride easily and get to your destination safely with our reliable and efficient ride-hailing service.\"},\"analytics\":{\"status\":\"1\",\"pixel_id\":\"XXXXXXXXXXXXX\",\"pixel_status\":\"1\",\"measurement_id\":\"UA-XXXXXX-XX\",\"tag_id\":\"XXXXXXXXXXXXX\",\"chat_bot_id\":\"XXXXXXXXXXX\"}},\"created_at\":\"2026-05-23T10:31:32.000000Z\",\"updated_at\":\"2026-05-23T10:31:32.000000Z\"}}', NULL, '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(6, 'User', 'John Due - User has been created', 'App\\Models\\User', 'created', 3, NULL, NULL, '{\"attributes\":{\"id\":3,\"name\":\"John Due\",\"email\":\"rider@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":123456789,\"password\":\"$2y$12$rK\\/W019l4Qqo23E3fHS9deozyS111pCFLb0mqFYVsTH.eet0aCIoS\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:37.000000Z\",\"updated_at\":\"2026-05-23T10:31:37.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:37', '2026-05-23 05:31:37'),
(7, 'User', 'John Due - User has been created', 'App\\Models\\User', 'created', 3, NULL, NULL, '{\"attributes\":{\"id\":3,\"name\":\"John Due\",\"email\":\"rider@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":123456789,\"password\":\"$2y$12$rK\\/W019l4Qqo23E3fHS9deozyS111pCFLb0mqFYVsTH.eet0aCIoS\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:37.000000Z\",\"updated_at\":\"2026-05-23T10:31:37.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:37', '2026-05-23 05:31:37'),
(8, 'User', 'Jack Nicole - User has been created', 'App\\Models\\User', 'created', 4, NULL, NULL, '{\"attributes\":{\"id\":4,\"name\":\"Jack Nicole\",\"email\":\"driver@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":1234567890,\"password\":\"$2y$12$0Ulk9POmnRcTHzLMWsHP8.7nGqebwmgyve9\\/\\/mGpgJgi69jZrBcUW\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:37.000000Z\",\"updated_at\":\"2026-05-23T10:31:37.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:37', '2026-05-23 05:31:37'),
(9, 'User', 'Jack Nicole - User has been created', 'App\\Models\\User', 'created', 4, NULL, NULL, '{\"attributes\":{\"id\":4,\"name\":\"Jack Nicole\",\"email\":\"driver@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":1234567890,\"password\":\"$2y$12$0Ulk9POmnRcTHzLMWsHP8.7nGqebwmgyve9\\/\\/mGpgJgi69jZrBcUW\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:37.000000Z\",\"updated_at\":\"2026-05-23T10:31:37.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:37', '2026-05-23 05:31:37'),
(10, 'User', 'joe Dispatch - User has been created', 'App\\Models\\User', 'created', 5, NULL, NULL, '{\"attributes\":{\"id\":5,\"name\":\"joe Dispatch\",\"email\":\"dispatcher@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":9876543210,\"password\":\"$2y$12$DOwmT8mT6AVVf1DnS2dqaeKU7ZvHINDV3T1tNTnDNxM4syoxFYhMa\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:38.000000Z\",\"updated_at\":\"2026-05-23T10:31:38.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:38', '2026-05-23 05:31:38'),
(11, 'User', 'joe Dispatch - User has been created', 'App\\Models\\User', 'created', 5, NULL, NULL, '{\"attributes\":{\"id\":5,\"name\":\"joe Dispatch\",\"email\":\"dispatcher@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":9876543210,\"password\":\"$2y$12$DOwmT8mT6AVVf1DnS2dqaeKU7ZvHINDV3T1tNTnDNxM4syoxFYhMa\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:38.000000Z\",\"updated_at\":\"2026-05-23T10:31:38.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:38', '2026-05-23 05:31:38'),
(12, 'User', 'Fleet Manager - User has been created', 'App\\Models\\User', 'created', 6, NULL, NULL, '{\"attributes\":{\"id\":6,\"name\":\"Fleet Manager\",\"email\":\"fleet@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":4321098765,\"password\":\"$2y$12$\\/RdCbdhtVgWD.4Gyo7gOG.mWzOFWf.Auh\\/2NCLgZisnDp53KmBIS.\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:39.000000Z\",\"updated_at\":\"2026-05-23T10:31:39.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:39', '2026-05-23 05:31:39'),
(13, 'User', 'Fleet Manager - User has been created', 'App\\Models\\User', 'created', 6, NULL, NULL, '{\"attributes\":{\"id\":6,\"name\":\"Fleet Manager\",\"email\":\"fleet@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":4321098765,\"password\":\"$2y$12$\\/RdCbdhtVgWD.4Gyo7gOG.mWzOFWf.Auh\\/2NCLgZisnDp53KmBIS.\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:39.000000Z\",\"updated_at\":\"2026-05-23T10:31:39.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:39', '2026-05-23 05:31:39'),
(14, 'User', 'Jack Nicole - User has been updated', 'App\\Models\\User', 'updated', 4, NULL, NULL, '{\"attributes\":{\"id\":4,\"name\":\"Jack Nicole\",\"email\":\"driver@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":1234567890,\"password\":\"$2y$12$0Ulk9POmnRcTHzLMWsHP8.7nGqebwmgyve9\\/\\/mGpgJgi69jZrBcUW\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":4,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:37.000000Z\",\"updated_at\":\"2026-05-23T10:31:41.000000Z\",\"is_online\":1,\"is_on_ride\":null,\"location\":{\"lat\":40.7128,\"lng\":-74.006},\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":1,\"service_category_id\":1},\"old\":{\"id\":4,\"name\":\"Jack Nicole\",\"email\":\"driver@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":1234567890,\"password\":\"$2y$12$0Ulk9POmnRcTHzLMWsHP8.7nGqebwmgyve9\\/\\/mGpgJgi69jZrBcUW\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:37.000000Z\",\"updated_at\":\"2026-05-23T10:31:37.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:41', '2026-05-23 05:31:41'),
(15, 'User', 'Jack Nicole - User has been updated', 'App\\Models\\User', 'updated', 4, NULL, NULL, '{\"attributes\":{\"id\":4,\"name\":\"Jack Nicole\",\"email\":\"driver@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":1234567890,\"password\":\"$2y$12$0Ulk9POmnRcTHzLMWsHP8.7nGqebwmgyve9\\/\\/mGpgJgi69jZrBcUW\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":4,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:37.000000Z\",\"updated_at\":\"2026-05-23T10:31:41.000000Z\",\"is_online\":1,\"is_on_ride\":null,\"location\":{\"lat\":40.7128,\"lng\":-74.006},\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":1,\"service_category_id\":1},\"old\":{\"id\":null,\"name\":null,\"email\":null,\"email_verified_at\":null,\"country_code\":null,\"phone\":null,\"password\":null,\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":null,\"status\":null,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":null,\"remember_token\":null,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null,\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":null,\"can_accept_parcel\":null,\"can_accept_ride_request\":null,\"can_accept_parcel_request\":null,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:41', '2026-05-23 05:31:41'),
(16, 'User', 'John Due - User has been updated', 'App\\Models\\User', 'updated', 3, NULL, NULL, '{\"attributes\":{\"id\":3,\"name\":\"John Due\",\"email\":\"rider@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":123456789,\"password\":\"$2y$12$rK\\/W019l4Qqo23E3fHS9deozyS111pCFLb0mqFYVsTH.eet0aCIoS\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":3,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:37.000000Z\",\"updated_at\":\"2026-05-23T10:31:41.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null},\"old\":{\"id\":3,\"name\":\"John Due\",\"email\":\"rider@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":123456789,\"password\":\"$2y$12$rK\\/W019l4Qqo23E3fHS9deozyS111pCFLb0mqFYVsTH.eet0aCIoS\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:37.000000Z\",\"updated_at\":\"2026-05-23T10:31:37.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:41', '2026-05-23 05:31:41'),
(17, 'User', 'John Due - User has been updated', 'App\\Models\\User', 'updated', 3, NULL, NULL, '{\"attributes\":{\"id\":3,\"name\":\"John Due\",\"email\":\"rider@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":123456789,\"password\":\"$2y$12$rK\\/W019l4Qqo23E3fHS9deozyS111pCFLb0mqFYVsTH.eet0aCIoS\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":3,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:37.000000Z\",\"updated_at\":\"2026-05-23T10:31:41.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null},\"old\":{\"id\":null,\"name\":null,\"email\":null,\"email_verified_at\":null,\"country_code\":null,\"phone\":null,\"password\":null,\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":null,\"status\":null,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":null,\"system_reserve\":null,\"remember_token\":null,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null,\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":null,\"can_accept_parcel\":null,\"can_accept_ride_request\":null,\"can_accept_parcel_request\":null,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:41', '2026-05-23 05:31:41'),
(18, 'User', 'Alexander Wright - User has been created', 'App\\Models\\User', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":7,\"name\":\"Alexander Wright\",\"email\":\"alexander.w@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":2025550143,\"password\":\"$2y$12$TCg8l1QuEA7Ja8OC0xy\\/xeoM1xHrVB8AC6SUUTDKwnBcNftWiSsBu\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:41.000000Z\",\"updated_at\":\"2026-05-23T10:31:41.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:41', '2026-05-23 05:31:41'),
(19, 'User', 'Alexander Wright - User has been created', 'App\\Models\\User', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":7,\"name\":\"Alexander Wright\",\"email\":\"alexander.w@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":2025550143,\"password\":\"$2y$12$TCg8l1QuEA7Ja8OC0xy\\/xeoM1xHrVB8AC6SUUTDKwnBcNftWiSsBu\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:41.000000Z\",\"updated_at\":\"2026-05-23T10:31:41.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:41', '2026-05-23 05:31:41'),
(20, 'User', 'Sophia Martinez - User has been created', 'App\\Models\\User', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":8,\"name\":\"Sophia Martinez\",\"email\":\"sophia.m@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":2025550189,\"password\":\"$2y$12$QD\\/hozGResoGTasXATKbie282p9iCDRjXXOGSknieHWtpGFxMB7RW\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:42.000000Z\",\"updated_at\":\"2026-05-23T10:31:42.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:42', '2026-05-23 05:31:42'),
(21, 'User', 'Sophia Martinez - User has been created', 'App\\Models\\User', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":8,\"name\":\"Sophia Martinez\",\"email\":\"sophia.m@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":2025550189,\"password\":\"$2y$12$QD\\/hozGResoGTasXATKbie282p9iCDRjXXOGSknieHWtpGFxMB7RW\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:42.000000Z\",\"updated_at\":\"2026-05-23T10:31:42.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:42', '2026-05-23 05:31:42'),
(22, 'User', 'Marcus Vance - User has been created', 'App\\Models\\User', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":9,\"name\":\"Marcus Vance\",\"email\":\"marcus.v@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":2025550167,\"password\":\"$2y$12$g6xRrEri6R5nKsrtfmITsu8LrkSTodMXUIm9vW97BLFpRi6URklQu\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:43.000000Z\",\"updated_at\":\"2026-05-23T10:31:43.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:43', '2026-05-23 05:31:43'),
(23, 'User', 'Marcus Vance - User has been created', 'App\\Models\\User', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":9,\"name\":\"Marcus Vance\",\"email\":\"marcus.v@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":2025550167,\"password\":\"$2y$12$g6xRrEri6R5nKsrtfmITsu8LrkSTodMXUIm9vW97BLFpRi6URklQu\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:43.000000Z\",\"updated_at\":\"2026-05-23T10:31:43.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:43', '2026-05-23 05:31:43'),
(24, 'User', 'Elena Rostova - User has been created', 'App\\Models\\User', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":10,\"name\":\"Elena Rostova\",\"email\":\"elena.r@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":2025550122,\"password\":\"$2y$12$nBojZKyZFNDHsluLsjO\\/YeV9S577JSX.C.tTwLTIespVBJ9OvIeEK\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:43.000000Z\",\"updated_at\":\"2026-05-23T10:31:43.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:43', '2026-05-23 05:31:43'),
(25, 'User', 'Elena Rostova - User has been created', 'App\\Models\\User', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":10,\"name\":\"Elena Rostova\",\"email\":\"elena.r@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":2025550122,\"password\":\"$2y$12$nBojZKyZFNDHsluLsjO\\/YeV9S577JSX.C.tTwLTIespVBJ9OvIeEK\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:43.000000Z\",\"updated_at\":\"2026-05-23T10:31:43.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:43', '2026-05-23 05:31:43'),
(26, 'User', 'David Kim - User has been created', 'App\\Models\\User', 'created', 11, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":11,\"name\":\"David Kim\",\"email\":\"david.k@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":2025550198,\"password\":\"$2y$12$H8BCJ0rSgUhDbvnztfe1T.7gz0vPQay57hrtuaiIvYiOd2qVemrLO\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:44.000000Z\",\"updated_at\":\"2026-05-23T10:31:44.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:44', '2026-05-23 05:31:44'),
(27, 'User', 'David Kim - User has been created', 'App\\Models\\User', 'created', 11, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":11,\"name\":\"David Kim\",\"email\":\"david.k@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":2025550198,\"password\":\"$2y$12$H8BCJ0rSgUhDbvnztfe1T.7gz0vPQay57hrtuaiIvYiOd2qVemrLO\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:44.000000Z\",\"updated_at\":\"2026-05-23T10:31:44.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null}}', NULL, '2026-05-23 05:31:44', '2026-05-23 05:31:44'),
(28, 'User', 'Carlos Mendez - User has been created', 'App\\Models\\User', 'created', 12, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":12,\"name\":\"Carlos Mendez\",\"email\":\"carlos.m@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":3035550111,\"password\":\"$2y$12$lUyVtJADlWokaeC\\/OQ0wGe7P8SKCZsJIvlcXbpZiYvfVwe0bD3WV6\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:44.000000Z\",\"updated_at\":\"2026-05-23T10:31:44.000000Z\",\"is_online\":1,\"is_on_ride\":null,\"location\":{\"lat\":40.7568,\"lng\":-73.916},\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":1,\"service_category_id\":1}}', NULL, '2026-05-23 05:31:44', '2026-05-23 05:31:44'),
(29, 'User', 'Carlos Mendez - User has been created', 'App\\Models\\User', 'created', 12, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":12,\"name\":\"Carlos Mendez\",\"email\":\"carlos.m@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":3035550111,\"password\":\"$2y$12$lUyVtJADlWokaeC\\/OQ0wGe7P8SKCZsJIvlcXbpZiYvfVwe0bD3WV6\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:44.000000Z\",\"updated_at\":\"2026-05-23T10:31:44.000000Z\",\"is_online\":1,\"is_on_ride\":null,\"location\":{\"lat\":40.7568,\"lng\":-73.916},\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":1,\"service_category_id\":1}}', NULL, '2026-05-23 05:31:45', '2026-05-23 05:31:45'),
(30, 'User', 'Sarah Jenkins - User has been created', 'App\\Models\\User', 'created', 13, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":13,\"name\":\"Sarah Jenkins\",\"email\":\"sarah.j@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":3035550222,\"password\":\"$2y$12$47cMZJ2EZvENuJeR9y7zxecbGn0d0Kz4yJjUZuSPN4vvMzh8WqkIK\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:45.000000Z\",\"updated_at\":\"2026-05-23T10:31:45.000000Z\",\"is_online\":1,\"is_on_ride\":null,\"location\":{\"lat\":40.8128,\"lng\":-74.098},\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":1,\"service_category_id\":1}}', NULL, '2026-05-23 05:31:45', '2026-05-23 05:31:45'),
(31, 'User', 'Sarah Jenkins - User has been created', 'App\\Models\\User', 'created', 13, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":13,\"name\":\"Sarah Jenkins\",\"email\":\"sarah.j@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":3035550222,\"password\":\"$2y$12$47cMZJ2EZvENuJeR9y7zxecbGn0d0Kz4yJjUZuSPN4vvMzh8WqkIK\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:45.000000Z\",\"updated_at\":\"2026-05-23T10:31:45.000000Z\",\"is_online\":1,\"is_on_ride\":null,\"location\":{\"lat\":40.8128,\"lng\":-74.098},\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":1,\"service_category_id\":1}}', NULL, '2026-05-23 05:31:45', '2026-05-23 05:31:45'),
(32, 'User', 'Darnell Washington - User has been created', 'App\\Models\\User', 'created', 14, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":14,\"name\":\"Darnell Washington\",\"email\":\"darnell.w@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":3035550333,\"password\":\"$2y$12$4AxrwPpHFiJdy8zCAE4TyeAXoLsOM82XBeyW8dA6KeQx\\/LjRgCnka\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:46.000000Z\",\"updated_at\":\"2026-05-23T10:31:46.000000Z\",\"is_online\":1,\"is_on_ride\":null,\"location\":{\"lat\":40.7048,\"lng\":-73.968},\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":1,\"service_category_id\":1}}', NULL, '2026-05-23 05:31:46', '2026-05-23 05:31:46'),
(33, 'User', 'Darnell Washington - User has been created', 'App\\Models\\User', 'created', 14, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":14,\"name\":\"Darnell Washington\",\"email\":\"darnell.w@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":3035550333,\"password\":\"$2y$12$4AxrwPpHFiJdy8zCAE4TyeAXoLsOM82XBeyW8dA6KeQx\\/LjRgCnka\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:46.000000Z\",\"updated_at\":\"2026-05-23T10:31:46.000000Z\",\"is_online\":1,\"is_on_ride\":null,\"location\":{\"lat\":40.7048,\"lng\":-73.968},\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":1,\"service_category_id\":1}}', NULL, '2026-05-23 05:31:46', '2026-05-23 05:31:46'),
(34, 'User', 'Yuki Tanaka - User has been created', 'App\\Models\\User', 'created', 15, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":15,\"name\":\"Yuki Tanaka\",\"email\":\"yuki.t@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":3035550444,\"password\":\"$2y$12$JcZmbWP\\/03C8cBv82XeDTuImMHm7Ust3SotWYIOz1blCntCL5xuxK\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:47.000000Z\",\"updated_at\":\"2026-05-23T10:31:47.000000Z\",\"is_online\":1,\"is_on_ride\":null,\"location\":{\"lat\":40.711800000000004,\"lng\":-73.968},\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":1,\"service_category_id\":1}}', NULL, '2026-05-23 05:31:47', '2026-05-23 05:31:47'),
(35, 'User', 'Yuki Tanaka - User has been created', 'App\\Models\\User', 'created', 15, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":15,\"name\":\"Yuki Tanaka\",\"email\":\"yuki.t@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":3035550444,\"password\":\"$2y$12$JcZmbWP\\/03C8cBv82XeDTuImMHm7Ust3SotWYIOz1blCntCL5xuxK\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:47.000000Z\",\"updated_at\":\"2026-05-23T10:31:47.000000Z\",\"is_online\":1,\"is_on_ride\":null,\"location\":{\"lat\":40.711800000000004,\"lng\":-73.968},\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":1,\"service_category_id\":1}}', NULL, '2026-05-23 05:31:47', '2026-05-23 05:31:47'),
(36, 'User', 'Mateo Silva - User has been created', 'App\\Models\\User', 'created', 16, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":16,\"name\":\"Mateo Silva\",\"email\":\"mateo.s@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":3035550555,\"password\":\"$2y$12$iFugNOlyD29GJi6KD3v72eDalr55k4K\\/vObWWwb0oZ4M9b42MfxSG\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:48.000000Z\",\"updated_at\":\"2026-05-23T10:31:48.000000Z\",\"is_online\":1,\"is_on_ride\":null,\"location\":{\"lat\":40.7828,\"lng\":-74.049},\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":1,\"service_category_id\":1}}', NULL, '2026-05-23 05:31:48', '2026-05-23 05:31:48'),
(37, 'User', 'Mateo Silva - User has been created', 'App\\Models\\User', 'created', 16, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":16,\"name\":\"Mateo Silva\",\"email\":\"mateo.s@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":3035550555,\"password\":\"$2y$12$iFugNOlyD29GJi6KD3v72eDalr55k4K\\/vObWWwb0oZ4M9b42MfxSG\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":0,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:48.000000Z\",\"updated_at\":\"2026-05-23T10:31:48.000000Z\",\"is_online\":1,\"is_on_ride\":null,\"location\":{\"lat\":40.7828,\"lng\":-74.049},\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":1,\"service_category_id\":1}}', NULL, '2026-05-23 05:31:48', '2026-05-23 05:31:48'),
(38, 'Executive', 'Smith Due - Executive has been created', 'App\\Models\\User', 'created', 17, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":17,\"name\":\"Smith Due\",\"email\":\"executive@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":78945622,\"password\":\"$2y$12$CB8ev74TIcsutHq9OWCTVOe0svJK55jSCrCR6me.Yjy6gLtFl.Ggu\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:52.000000Z\",\"updated_at\":\"2026-05-23T10:31:52.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null,\"ratings_count\":0}}', NULL, '2026-05-23 05:31:52', '2026-05-23 05:31:52'),
(39, 'Executive', 'Smith Due - Executive has been created', 'App\\Models\\User', 'created', 17, 'App\\Models\\User', 1, '{\"attributes\":{\"id\":17,\"name\":\"Smith Due\",\"email\":\"executive@example.com\",\"email_verified_at\":null,\"country_code\":\"1\",\"phone\":78945622,\"password\":\"$2y$12$CB8ev74TIcsutHq9OWCTVOe0svJK55jSCrCR6me.Yjy6gLtFl.Ggu\",\"profile_image_id\":null,\"firebase_uid\":null,\"is_verified\":1,\"status\":1,\"fleet_manager_id\":null,\"referral_code\":null,\"fcm_token\":null,\"referred_by_id\":null,\"created_by_id\":1,\"system_reserve\":1,\"remember_token\":null,\"deleted_at\":null,\"created_at\":\"2026-05-23T10:31:52.000000Z\",\"updated_at\":\"2026-05-23T10:31:52.000000Z\",\"is_online\":null,\"is_on_ride\":null,\"location\":null,\"can_accept_ride\":1,\"can_accept_parcel\":1,\"can_accept_ride_request\":1,\"can_accept_parcel_request\":1,\"service_id\":null,\"service_category_id\":null,\"ratings_count\":0}}', NULL, '2026-05-23 05:31:52', '2026-05-23 05:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `area_locality` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `place_points` geometry DEFAULT NULL,
  `locations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`locations`)),
  `status` int(11) DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ambulances`
--

CREATE TABLE `ambulances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` double DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assigned_tickets`
--

CREATE TABLE `assigned_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backup_logs`
--

CREATE TABLE `backup_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `file_path` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `banner_image_id` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_services`
--

CREATE TABLE `banner_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ride_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ride_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` enum('rejected','accepted') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `blog_thumbnail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `blog_meta_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `is_sticky` int(11) NOT NULL DEFAULT 0,
  `is_draft` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cab_commission_histories`
--

CREATE TABLE `cab_commission_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_commission` decimal(8,2) DEFAULT 0.00,
  `driver_commission` decimal(8,2) DEFAULT 0.00,
  `fleet_commission` decimal(8,2) DEFAULT 0.00,
  `commission_rate` decimal(8,2) DEFAULT 0.00,
  `commission_type` varchar(255) DEFAULT NULL,
  `ride_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cab_referral_bonuses`
--

CREATE TABLE `cab_referral_bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referrer_id` bigint(20) UNSIGNED NOT NULL,
  `referred_id` bigint(20) UNSIGNED NOT NULL,
  `referrer_type` enum('rider','driver') NOT NULL DEFAULT 'rider',
  `referred_type` enum('rider','driver') NOT NULL DEFAULT 'rider',
  `ride_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `referrer_percentage` decimal(5,2) NOT NULL DEFAULT 0.00,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `referred_percentage` decimal(5,2) NOT NULL DEFAULT 0.00,
  `referred_bonus_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `bonus_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `credited_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cancellation_reasons`
--

CREATE TABLE `cancellation_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `for` enum('rider','driver') DEFAULT 'rider',
  `ride_start` enum('before','after') DEFAULT 'before',
  `status` int(11) NOT NULL DEFAULT 1,
  `icon_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `category_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` varchar(255) NOT NULL DEFAULT 'post',
  `commission_rate` decimal(8,2) DEFAULT 0.00,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `category_meta_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories_services`
--

CREATE TABLE `categories_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_category_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_addresses`
--

CREATE TABLE `company_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fleet_manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `currency_symbol` longtext DEFAULT NULL,
  `iso_3166_2` varchar(2) DEFAULT NULL,
  `iso_3166_3` varchar(3) DEFAULT NULL,
  `calling_code` varchar(3) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `currency`, `currency_symbol`, `iso_3166_2`, `iso_3166_3`, `calling_code`, `flag`, `currency_code`) VALUES
(4, 'Afghanistan', 'afghani', '؋', 'AF', 'AFG', '93', 'AF.png', 'AFN'),
(8, 'Albania', 'lek', 'Lek', 'AL', 'ALB', '355', 'AL.png', 'ALL'),
(10, 'Antarctica', '', '', 'AQ', 'ATA', '672', 'AQ.png', ''),
(12, 'Algeria', 'Algerian dinar', 'DZD', 'DZ', 'DZA', '213', 'DZ.png', 'DZD'),
(16, 'American Samoa', 'US dollar', '$', 'AS', 'ASM', '1', 'AS.png', 'USD'),
(20, 'Andorra', 'euro', '€', 'AD', 'AND', '376', 'AD.png', 'EUR'),
(24, 'Angola', 'kwanza', 'Kz', 'AO', 'AGO', '244', 'AO.png', 'AOA'),
(28, 'Antigua and Barbuda', 'East Caribbean dollar', '$', 'AG', 'ATG', '1', 'AG.png', 'XCD'),
(31, 'Azerbaijan', 'Azerbaijani manat', 'ман', 'AZ', 'AZE', '994', 'AZ.png', 'AZN'),
(32, 'Argentina', 'Argentine peso', '$', 'AR', 'ARG', '54', 'AR.png', 'ARS'),
(36, 'Australia', 'Australian dollar', '$', 'AU', 'AUS', '61', 'AU.png', 'AUD'),
(40, 'Austria', 'euro', '€', 'AT', 'AUT', '43', 'AT.png', 'EUR'),
(44, 'Bahamas', 'Bahamian dollar', '$', 'BS', 'BHS', '1', 'BS.png', 'BSD'),
(48, 'Bahrain', 'Bahraini dinar', 'BHD', 'BH', 'BHR', '973', 'BH.png', 'BHD'),
(50, 'Bangladesh', 'taka (inv.)', 'BDT', 'BD', 'BGD', '880', 'BD.png', 'BDT'),
(51, 'Armenia', 'dram (inv.)', 'AMD', 'AM', 'ARM', '374', 'AM.png', 'AMD'),
(52, 'Barbados', 'Barbados dollar', '$', 'BB', 'BRB', '1', 'BB.png', 'BBD'),
(56, 'Belgium', 'euro', '€', 'BE', 'BEL', '32', 'BE.png', 'EUR'),
(60, 'Bermuda', 'Bermuda dollar', '$', 'BM', 'BMU', '1', 'BM.png', 'BMD'),
(64, 'Bhutan', 'ngultrum (inv.)', 'BTN', 'BT', 'BTN', '975', 'BT.png', 'BTN'),
(68, 'Bolivia, Plurinational State of', 'boliviano', '$b', 'BO', 'BOL', '591', 'BO.png', 'BOB'),
(70, 'Bosnia and Herzegovina', 'convertible mark', 'KM', 'BA', 'BIH', '387', 'BA.png', 'BAM'),
(72, 'Botswana', 'pula (inv.)', 'P', 'BW', 'BWA', '267', 'BW.png', 'BWP'),
(74, 'Bouvet Island', '', 'kr', 'BV', 'BVT', '47', 'BV.png', ''),
(76, 'Brazil', 'real (pl. reais)', 'R$', 'BR', 'BRA', '55', 'BR.png', 'BRL'),
(84, 'Belize', 'Belize dollar', 'BZ$', 'BZ', 'BLZ', '501', 'BZ.png', 'BZD'),
(86, 'British Indian Ocean Territory', 'US dollar', '$', 'IO', 'IOT', '246', 'IO.png', 'USD'),
(90, 'Solomon Islands', 'Solomon Islands dollar', '$', 'SB', 'SLB', '677', 'SB.png', 'SBD'),
(92, 'Virgin Islands, British', 'US dollar', '$', 'VG', 'VGB', '1', 'VG.png', 'USD'),
(96, 'Brunei Darussalam', 'Brunei dollar', '$', 'BN', 'BRN', '673', 'BN.png', 'BND'),
(100, 'Bulgaria', 'lev (pl. leva)', 'лв', 'BG', 'BGR', '359', 'BG.png', 'BGN'),
(104, 'Myanmar', 'kyat', 'K', 'MM', 'MMR', '95', 'MM.png', 'MMK'),
(108, 'Burundi', 'Burundi franc', 'BIF', 'BI', 'BDI', '257', 'BI.png', 'BIF'),
(112, 'Belarus', 'Belarusian rouble', 'p.', 'BY', 'BLR', '375', 'BY.png', 'BYR'),
(116, 'Cambodia', 'riel', '៛', 'KH', 'KHM', '855', 'KH.png', 'KHR'),
(120, 'Cameroon', 'CFA franc (BEAC)', 'FCF', 'CM', 'CMR', '237', 'CM.png', 'XAF'),
(124, 'Canada', 'Canadian dollar', '$', 'CA', 'CAN', '1', 'CA.png', 'CAD'),
(132, 'Cape Verde', 'Cape Verde escudo', 'CVE', 'CV', 'CPV', '238', 'CV.png', 'CVE'),
(136, 'Cayman Islands', 'Cayman Islands dollar', '$', 'KY', 'CYM', '1', 'KY.png', 'KYD'),
(140, 'Central African Republic', 'CFA franc (BEAC)', 'CFA', 'CF', 'CAF', '236', 'CF.png', 'XAF'),
(144, 'Sri Lanka', 'Sri Lankan rupee', '₨', 'LK', 'LKA', '94', 'LK.png', 'LKR'),
(148, 'Chad', 'CFA franc (BEAC)', 'XAF', 'TD', 'TCD', '235', 'TD.png', 'XAF'),
(152, 'Chile', 'Chilean peso', 'CLP', 'CL', 'CHL', '56', 'CL.png', 'CLP'),
(156, 'China', 'renminbi-yuan (inv.)', '¥', 'CN', 'CHN', '86', 'CN.png', 'CNY'),
(158, 'Taiwan, Province of China', 'new Taiwan dollar', 'NT$', 'TW', 'TWN', '886', 'TW.png', 'TWD'),
(162, 'Christmas Island', 'Australian dollar', '$', 'CX', 'CXR', '61', 'CX.png', 'AUD'),
(166, 'Cocos (Keeling) Islands', 'Australian dollar', '$', 'CC', 'CCK', '61', 'CC.png', 'AUD'),
(170, 'Colombia', 'Colombian peso', '$', 'CO', 'COL', '57', 'CO.png', 'COP'),
(174, 'Comoros', 'Comorian franc', 'KMF', 'KM', 'COM', '269', 'KM.png', 'KMF'),
(175, 'Mayotte', 'euro', '€', 'YT', 'MYT', '262', 'YT.png', 'EUR'),
(178, 'Congo', 'CFA franc (BEAC)', 'FCF', 'CG', 'COG', '242', 'CG.png', 'XAF'),
(180, 'Congo, the Democratic Republic of the', 'Congolese franc', 'CDF', 'CD', 'COD', '243', 'CD.png', 'CDF'),
(184, 'Cook Islands', 'New Zealand dollar', '$', 'CK', 'COK', '682', 'CK.png', 'NZD'),
(188, 'Costa Rica', 'Costa Rican colón (pl. colones)', '₡', 'CR', 'CRI', '506', 'CR.png', 'CRC'),
(191, 'Croatia', 'kuna (inv.)', 'kn', 'HR', 'HRV', '385', 'HR.png', 'HRK'),
(192, 'Cuba', 'Cuban peso', '₱', 'CU', 'CUB', '53', 'CU.png', 'CUP'),
(196, 'Cyprus', 'euro', 'CYP', 'CY', 'CYP', '357', 'CY.png', 'EUR'),
(203, 'Czech Republic', 'Czech koruna (pl. koruny)', 'Kč', 'CZ', 'CZE', '420', 'CZ.png', 'CZK'),
(204, 'Benin', 'CFA franc (BCEAO)', 'XOF', 'BJ', 'BEN', '229', 'BJ.png', 'XOF'),
(208, 'Denmark', 'Danish krone', 'kr', 'DK', 'DNK', '45', 'DK.png', 'DKK'),
(212, 'Dominica', 'East Caribbean dollar', '$', 'DM', 'DMA', '1', 'DM.png', 'XCD'),
(214, 'Dominican Republic', 'Dominican peso', 'RD$', 'DO', 'DOM', '1', 'DO.png', 'DOP'),
(218, 'Ecuador', 'US dollar', '$', 'EC', 'ECU', '593', 'EC.png', 'USD'),
(222, 'El Salvador', 'Salvadorian colón (pl. colones)', '$', 'SV', 'SLV', '503', 'SV.png', 'SVC'),
(226, 'Equatorial Guinea', 'CFA franc (BEAC)', 'FCF', 'GQ', 'GNQ', '240', 'GQ.png', 'XAF'),
(231, 'Ethiopia', 'birr (inv.)', 'ETB', 'ET', 'ETH', '251', 'ET.png', 'ETB'),
(232, 'Eritrea', 'nakfa', 'Nfk', 'ER', 'ERI', '291', 'ER.png', 'ERN'),
(233, 'Estonia', 'euro', 'kr', 'EE', 'EST', '372', 'EE.png', 'EUR'),
(234, 'Faroe Islands', 'Danish krone', 'kr', 'FO', 'FRO', '298', 'FO.png', 'DKK'),
(238, 'Falkland Islands (Malvinas)', 'Falkland Islands pound', '£', 'FK', 'FLK', '500', 'FK.png', 'FKP'),
(239, 'South Georgia and the South Sandwich Islands', '', '£', 'GS', 'SGS', '44', 'GS.png', ''),
(242, 'Fiji', 'Fiji dollar', '$', 'FJ', 'FJI', '679', 'FJ.png', 'FJD'),
(246, 'Finland', 'euro', '€', 'FI', 'FIN', '358', 'FI.png', 'EUR'),
(248, 'Åland Islands', 'euro', NULL, 'AX', 'ALA', '358', 'default.png', 'EUR'),
(250, 'France', 'euro', '€', 'FR', 'FRA', '33', 'FR.png', 'EUR'),
(254, 'French Guiana', 'euro', '€', 'GF', 'GUF', '594', 'GF.png', 'EUR'),
(258, 'French Polynesia', 'CFP franc', 'XPF', 'PF', 'PYF', '689', 'PF.png', 'XPF'),
(260, 'French Southern Territories', 'euro', '€', 'TF', 'ATF', '33', 'TF.png', 'EUR'),
(262, 'Djibouti', 'Djibouti franc', 'DJF', 'DJ', 'DJI', '253', 'DJ.png', 'DJF'),
(266, 'Gabon', 'CFA franc (BEAC)', 'FCF', 'GA', 'GAB', '241', 'GA.png', 'XAF'),
(268, 'Georgia', 'lari', 'GEL', 'GE', 'GEO', '995', 'GE.png', 'GEL'),
(270, 'Gambia', 'dalasi (inv.)', 'D', 'GM', 'GMB', '220', 'GM.png', 'GMD'),
(275, 'Palestinian Territory, Occupied', NULL, '₪', 'PS', 'PSE', '970', 'PS.png', NULL),
(276, 'Germany', 'euro', '€', 'DE', 'DEU', '49', 'DE.png', 'EUR'),
(288, 'Ghana', 'Ghana cedi', '¢', 'GH', 'GHA', '233', 'GH.png', 'GHS'),
(292, 'Gibraltar', 'Gibraltar pound', '£', 'GI', 'GIB', '350', 'GI.png', 'GIP'),
(296, 'Kiribati', 'Australian dollar', '$', 'KI', 'KIR', '686', 'KI.png', 'AUD'),
(300, 'Greece', 'euro', '€', 'GR', 'GRC', '30', 'GR.png', 'EUR'),
(304, 'Greenland', 'Danish krone', 'kr', 'GL', 'GRL', '299', 'GL.png', 'DKK'),
(308, 'Grenada', 'East Caribbean dollar', '$', 'GD', 'GRD', '1', 'GD.png', 'XCD'),
(312, 'Guadeloupe', 'euro', '€', 'GP', 'GLP', '590', 'GP.png', 'EUR '),
(316, 'Guam', 'US dollar', '$', 'GU', 'GUM', '1', 'GU.png', 'USD'),
(320, 'Guatemala', 'quetzal (pl. quetzales)', 'Q', 'GT', 'GTM', '502', 'GT.png', 'GTQ'),
(324, 'Guinea', 'Guinean franc', 'GNF', 'GN', 'GIN', '224', 'GN.png', 'GNF'),
(328, 'Guyana', 'Guyana dollar', '$', 'GY', 'GUY', '592', 'GY.png', 'GYD'),
(332, 'Haiti', 'gourde', 'G', 'HT', 'HTI', '509', 'HT.png', 'HTG'),
(334, 'Heard Island and McDonald Islands', '', '$', 'HM', 'HMD', '61', 'HM.png', ''),
(336, 'Holy See (Vatican City State)', 'euro', '€', 'VA', 'VAT', '39', 'VA.png', 'EUR'),
(340, 'Honduras', 'lempira', 'L', 'HN', 'HND', '504', 'HN.png', 'HNL'),
(344, 'Hong Kong', 'Hong Kong dollar', '$', 'HK', 'HKG', '852', 'HK.png', 'HKD'),
(348, 'Hungary', 'forint (inv.)', 'Ft', 'HU', 'HUN', '36', 'HU.png', 'HUF'),
(352, 'Iceland', 'króna (pl. krónur)', 'kr', 'IS', 'ISL', '354', 'IS.png', 'ISK'),
(356, 'India', 'Indian rupee', '₹', 'IN', 'IND', '91', 'IN.png', 'INR'),
(360, 'Indonesia', 'Indonesian rupiah (inv.)', 'Rp', 'ID', 'IDN', '62', 'ID.png', 'IDR'),
(364, 'Iran, Islamic Republic of', 'Iranian rial', '﷼', 'IR', 'IRN', '98', 'IR.png', 'IRR'),
(368, 'Iraq', 'Iraqi dinar', 'IQD', 'IQ', 'IRQ', '964', 'IQ.png', 'IQD'),
(372, 'Ireland', 'euro', '€', 'IE', 'IRL', '353', 'IE.png', 'EUR'),
(376, 'Israel', 'shekel', '₪', 'IL', 'ISR', '972', 'IL.png', 'ILS'),
(380, 'Italy', 'euro', '€', 'IT', 'ITA', '39', 'IT.png', 'EUR'),
(384, 'Côte d\'Ivoire', 'CFA franc (BCEAO)', 'XOF', 'CI', 'CIV', '225', 'CI.png', 'XOF'),
(388, 'Jamaica', 'Jamaica dollar', '$', 'JM', 'JAM', '1', 'JM.png', 'JMD'),
(392, 'Japan', 'yen (inv.)', '¥', 'JP', 'JPN', '81', 'JP.png', 'JPY'),
(398, 'Kazakhstan', 'tenge (inv.)', 'лв', 'KZ', 'KAZ', '7', 'KZ.png', 'KZT'),
(400, 'Jordan', 'Jordanian dinar', 'JOD', 'JO', 'JOR', '962', 'JO.png', 'JOD'),
(404, 'Kenya', 'Kenyan shilling', 'KES', 'KE', 'KEN', '254', 'KE.png', 'KES'),
(408, 'Korea, Democratic People\'s Republic of', 'North Korean won (inv.)', '₩', 'KP', 'PRK', '850', 'KP.png', 'KPW'),
(410, 'Korea, Republic of', 'South Korean won (inv.)', '₩', 'KR', 'KOR', '82', 'KR.png', 'KRW'),
(414, 'Kuwait', 'Kuwaiti dinar', 'KWD', 'KW', 'KWT', '965', 'KW.png', 'KWD'),
(417, 'Kyrgyzstan', 'som', 'лв', 'KG', 'KGZ', '996', 'KG.png', 'KGS'),
(418, 'Lao People\'s Democratic Republic', 'kip (inv.)', '₭', 'LA', 'LAO', '856', 'LA.png', 'LAK'),
(422, 'Lebanon', 'Lebanese pound', '£', 'LB', 'LBN', '961', 'LB.png', 'LBP'),
(426, 'Lesotho', 'loti (pl. maloti)', 'L', 'LS', 'LSO', '266', 'LS.png', 'LSL'),
(428, 'Latvia', 'euro', 'Ls', 'LV', 'LVA', '371', 'LV.png', 'EUR'),
(430, 'Liberia', 'Liberian dollar', '$', 'LR', 'LBR', '231', 'LR.png', 'LRD'),
(434, 'Libya', 'Libyan dinar', 'LYD', 'LY', 'LBY', '218', 'LY.png', 'LYD'),
(438, 'Liechtenstein', 'Swiss franc', 'CHF', 'LI', 'LIE', '423', 'LI.png', 'CHF'),
(440, 'Lithuania', 'euro', 'Lt', 'LT', 'LTU', '370', 'LT.png', 'EUR'),
(442, 'Luxembourg', 'euro', '€', 'LU', 'LUX', '352', 'LU.png', 'EUR'),
(446, 'Macao', 'pataca', 'MOP', 'MO', 'MAC', '853', 'MO.png', 'MOP'),
(450, 'Madagascar', 'ariary', 'MGA', 'MG', 'MDG', '261', 'MG.png', 'MGA'),
(454, 'Malawi', 'Malawian kwacha (inv.)', 'MK', 'MW', 'MWI', '265', 'MW.png', 'MWK'),
(458, 'Malaysia', 'ringgit (inv.)', 'RM', 'MY', 'MYS', '60', 'MY.png', 'MYR'),
(462, 'Maldives', 'rufiyaa', 'Rf', 'MV', 'MDV', '960', 'MV.png', 'MVR'),
(466, 'Mali', 'CFA franc (BCEAO)', 'XOF', 'ML', 'MLI', '223', 'ML.png', 'XOF'),
(470, 'Malta', 'euro', 'MTL', 'MT', 'MLT', '356', 'MT.png', 'EUR'),
(474, 'Martinique', 'euro', '€', 'MQ', 'MTQ', '596', 'MQ.png', 'EUR'),
(478, 'Mauritania', 'ouguiya', 'UM', 'MR', 'MRT', '222', 'MR.png', 'MRO'),
(480, 'Mauritius', 'Mauritian rupee', '₨', 'MU', 'MUS', '230', 'MU.png', 'MUR'),
(484, 'Mexico', 'Mexican peso', '$', 'MX', 'MEX', '52', 'MX.png', 'MXN'),
(492, 'Monaco', 'euro', '€', 'MC', 'MCO', '377', 'MC.png', 'EUR'),
(496, 'Mongolia', 'tugrik', '₮', 'MN', 'MNG', '976', 'MN.png', 'MNT'),
(498, 'Moldova, Republic of', 'Moldovan leu (pl. lei)', 'MDL', 'MD', 'MDA', '373', 'MD.png', 'MDL'),
(499, 'Montenegro', 'euro', '€', 'ME', 'MNE', '382', 'ME.png', 'EUR'),
(500, 'Montserrat', 'East Caribbean dollar', '$', 'MS', 'MSR', '1', 'MS.png', 'XCD'),
(504, 'Morocco', 'Moroccan dirham', 'MAD', 'MA', 'MAR', '212', 'MA.png', 'MAD'),
(508, 'Mozambique', 'metical', 'MT', 'MZ', 'MOZ', '258', 'MZ.png', 'MZN'),
(512, 'Oman', 'Omani rial', '﷼', 'OM', 'OMN', '968', 'OM.png', 'OMR'),
(516, 'Namibia', 'Namibian dollar', '$', 'NA', 'NAM', '264', 'NA.png', 'NAD'),
(520, 'Nauru', 'Australian dollar', '$', 'NR', 'NRU', '674', 'NR.png', 'AUD'),
(524, 'Nepal', 'Nepalese rupee', '₨', 'NP', 'NPL', '977', 'NP.png', 'NPR'),
(528, 'Netherlands', 'euro', '€', 'NL', 'NLD', '31', 'NL.png', 'EUR'),
(531, 'Curaçao', 'Netherlands Antillean guilder (CW1)', NULL, 'CW', 'CUW', '599', 'default.png', 'ANG'),
(533, 'Aruba', 'Aruban guilder', 'ƒ', 'AW', 'ABW', '297', 'AW.png', 'AWG'),
(534, 'Sint Maarten (Dutch part)', 'Netherlands Antillean guilder (SX1)', NULL, 'SX', 'SXM', '721', 'default.png', 'ANG'),
(535, 'Bonaire, Sint Eustatius and Saba', 'US dollar', NULL, 'BQ', 'BES', '599', 'default.png', 'USD'),
(540, 'New Caledonia', 'CFP franc', 'XPF', 'NC', 'NCL', '687', 'NC.png', 'XPF'),
(548, 'Vanuatu', 'vatu (inv.)', 'Vt', 'VU', 'VUT', '678', 'VU.png', 'VUV'),
(554, 'New Zealand', 'New Zealand dollar', '$', 'NZ', 'NZL', '64', 'NZ.png', 'NZD'),
(558, 'Nicaragua', 'córdoba oro', 'C$', 'NI', 'NIC', '505', 'NI.png', 'NIO'),
(562, 'Niger', 'CFA franc (BCEAO)', 'XOF', 'NE', 'NER', '227', 'NE.png', 'XOF'),
(566, 'Nigeria', 'naira (inv.)', '₦', 'NG', 'NGA', '234', 'NG.png', 'NGN'),
(570, 'Niue', 'New Zealand dollar', '$', 'NU', 'NIU', '683', 'NU.png', 'NZD'),
(574, 'Norfolk Island', 'Australian dollar', '$', 'NF', 'NFK', '672', 'NF.png', 'AUD'),
(578, 'Norway', 'Norwegian krone (pl. kroner)', 'kr', 'NO', 'NOR', '47', 'NO.png', 'NOK'),
(580, 'Northern Mariana Islands', 'US dollar', '$', 'MP', 'MNP', '1', 'MP.png', 'USD'),
(581, 'United States Minor Outlying Islands', 'US dollar', '$', 'UM', 'UMI', '1', 'UM.png', 'USD'),
(583, 'Micronesia, Federated States of', 'US dollar', '$', 'FM', 'FSM', '691', 'FM.png', 'USD'),
(584, 'Marshall Islands', 'US dollar', '$', 'MH', 'MHL', '692', 'MH.png', 'USD'),
(585, 'Palau', 'US dollar', '$', 'PW', 'PLW', '680', 'PW.png', 'USD'),
(586, 'Pakistan', 'Pakistani rupee', '₨', 'PK', 'PAK', '92', 'PK.png', 'PKR'),
(591, 'Panama', 'balboa', 'B/.', 'PA', 'PAN', '507', 'PA.png', 'PAB'),
(598, 'Papua New Guinea', 'kina (inv.)', 'PGK', 'PG', 'PNG', '675', 'PG.png', 'PGK'),
(600, 'Paraguay', 'guaraní', 'Gs', 'PY', 'PRY', '595', 'PY.png', 'PYG'),
(604, 'Peru', 'new sol', 'S/.', 'PE', 'PER', '51', 'PE.png', 'PEN'),
(608, 'Philippines', 'Philippine peso', 'Php', 'PH', 'PHL', '63', 'PH.png', 'PHP'),
(612, 'Pitcairn', 'New Zealand dollar', '$', 'PN', 'PCN', '649', 'PN.png', 'NZD'),
(616, 'Poland', 'zloty', 'zł', 'PL', 'POL', '48', 'PL.png', 'PLN'),
(620, 'Portugal', 'euro', '€', 'PT', 'PRT', '351', 'PT.png', 'EUR'),
(624, 'Guinea-Bissau', 'CFA franc (BCEAO)', 'XOF', 'GW', 'GNB', '245', 'GW.png', 'XOF'),
(626, 'Timor-Leste', 'US dollar', '$', 'TL', 'TLS', '670', 'TL.png', 'USD'),
(630, 'Puerto Rico', 'US dollar', '$', 'PR', 'PRI', '1', 'PR.png', 'USD'),
(634, 'Qatar', 'Qatari riyal', '﷼', 'QA', 'QAT', '974', 'QA.png', 'QAR'),
(638, 'Réunion', 'euro', '€', 'RE', 'REU', '262', 'RE.png', 'EUR'),
(642, 'Romania', 'Romanian leu (pl. lei)', 'lei', 'RO', 'ROU', '40', 'RO.png', 'RON'),
(643, 'Russian Federation', 'Russian rouble', 'руб', 'RU', 'RUS', '7', 'RU.png', 'RUB'),
(646, 'Rwanda', 'Rwandese franc', 'RWF', 'RW', 'RWA', '250', 'RW.png', 'RWF'),
(652, 'Saint Barthélemy', 'euro', NULL, 'BL', 'BLM', '590', 'default.png', 'EUR'),
(654, 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena pound', '£', 'SH', 'SHN', '290', 'SH.png', 'SHP'),
(659, 'Saint Kitts and Nevis', 'East Caribbean dollar', '$', 'KN', 'KNA', '1', 'KN.png', 'XCD'),
(660, 'Anguilla', 'East Caribbean dollar', '$', 'AI', 'AIA', '1', 'AI.png', 'XCD'),
(662, 'Saint Lucia', 'East Caribbean dollar', '$', 'LC', 'LCA', '1', 'LC.png', 'XCD'),
(663, 'Saint Martin (French part)', 'euro', NULL, 'MF', 'MAF', '590', 'default.png', 'EUR'),
(666, 'Saint Pierre and Miquelon', 'euro', '€', 'PM', 'SPM', '508', 'PM.png', 'EUR'),
(670, 'Saint Vincent and the Grenadines', 'East Caribbean dollar', '$', 'VC', 'VCT', '1', 'VC.png', 'XCD'),
(674, 'San Marino', 'euro', '€', 'SM', 'SMR', '378', 'SM.png', 'EUR '),
(678, 'Sao Tome and Principe', 'dobra', 'Db', 'ST', 'STP', '239', 'ST.png', 'STD'),
(682, 'Saudi Arabia', 'riyal', '﷼', 'SA', 'SAU', '966', 'SA.png', 'SAR'),
(686, 'Senegal', 'CFA franc (BCEAO)', 'XOF', 'SN', 'SEN', '221', 'SN.png', 'XOF'),
(688, 'Serbia', 'Serbian dinar', NULL, 'RS', 'SRB', '381', 'default.png', 'RSD'),
(690, 'Seychelles', 'Seychelles rupee', '₨', 'SC', 'SYC', '248', 'SC.png', 'SCR'),
(694, 'Sierra Leone', 'leone', 'Le', 'SL', 'SLE', '232', 'SL.png', 'SLL'),
(702, 'Singapore', 'Singapore dollar', '$', 'SG', 'SGP', '65', 'SG.png', 'SGD'),
(703, 'Slovakia', 'euro', 'Sk', 'SK', 'SVK', '421', 'SK.png', 'EUR'),
(704, 'Viet Nam', 'dong', '₫', 'VN', 'VNM', '84', 'VN.png', 'VND'),
(705, 'Slovenia', 'euro', '€', 'SI', 'SVN', '386', 'SI.png', 'EUR'),
(706, 'Somalia', 'Somali shilling', 'S', 'SO', 'SOM', '252', 'SO.png', 'SOS'),
(710, 'South Africa', 'rand', 'R', 'ZA', 'ZAF', '27', 'ZA.png', 'ZAR'),
(716, 'Zimbabwe', 'Zimbabwe dollar (ZW1)', 'Z$', 'ZW', 'ZWE', '263', 'ZW.png', 'ZWL'),
(724, 'Spain', 'euro', '€', 'ES', 'ESP', '34', 'ES.png', 'EUR'),
(728, 'South Sudan', 'South Sudanese pound', NULL, 'SS', 'SSD', '211', 'default.png', 'SSP'),
(729, 'Sudan', 'Sudanese pound', NULL, 'SD', 'SDN', '249', 'default.png', 'SDG'),
(732, 'Western Sahara', 'Moroccan dirham', 'MAD', 'EH', 'ESH', '212', 'EH.png', 'MAD'),
(740, 'Suriname', 'Surinamese dollar', '$', 'SR', 'SUR', '597', 'SR.png', 'SRD'),
(744, 'Svalbard and Jan Mayen', 'Norwegian krone (pl. kroner)', 'kr', 'SJ', 'SJM', '47', 'SJ.png', 'NOK'),
(748, 'Swaziland', 'lilangeni', 'SZL', 'SZ', 'SWZ', '268', 'SZ.png', 'SZL'),
(752, 'Sweden', 'krona (pl. kronor)', 'kr', 'SE', 'SWE', '46', 'SE.png', 'SEK'),
(756, 'Switzerland', 'Swiss franc', 'CHF', 'CH', 'CHE', '41', 'CH.png', 'CHF'),
(760, 'Syrian Arab Republic', 'Syrian pound', '£', 'SY', 'SYR', '963', 'SY.png', 'SYP'),
(762, 'Tajikistan', 'somoni', 'TJS', 'TJ', 'TJK', '992', 'TJ.png', 'TJS'),
(764, 'Thailand', 'baht (inv.)', '฿', 'TH', 'THA', '66', 'TH.png', 'THB'),
(768, 'Togo', 'CFA franc (BCEAO)', 'XOF', 'TG', 'TGO', '228', 'TG.png', 'XOF'),
(772, 'Tokelau', 'New Zealand dollar', '$', 'TK', 'TKL', '690', 'TK.png', 'NZD'),
(776, 'Tonga', 'pa’anga (inv.)', 'T$', 'TO', 'TON', '676', 'TO.png', 'TOP'),
(780, 'Trinidad and Tobago', 'Trinidad and Tobago dollar', 'TT$', 'TT', 'TTO', '1', 'TT.png', 'TTD'),
(784, 'United Arab Emirates', 'UAE dirham', 'AED', 'AE', 'ARE', '971', 'AE.png', 'AED'),
(788, 'Tunisia', 'Tunisian dinar', 'TND', 'TN', 'TUN', '216', 'TN.png', 'TND'),
(792, 'Turkey', 'Turkish lira (inv.)', '₺', 'TR', 'TUR', '90', 'TR.png', 'TRY'),
(795, 'Turkmenistan', 'Turkmen manat (inv.)', 'm', 'TM', 'TKM', '993', 'TM.png', 'TMT'),
(796, 'Turks and Caicos Islands', 'US dollar', '$', 'TC', 'TCA', '1', 'TC.png', 'USD'),
(798, 'Tuvalu', 'Australian dollar', '$', 'TV', 'TUV', '688', 'TV.png', 'AUD'),
(800, 'Uganda', 'Uganda shilling', 'UGX', 'UG', 'UGA', '256', 'UG.png', 'UGX'),
(804, 'Ukraine', 'hryvnia', '₴', 'UA', 'UKR', '380', 'UA.png', 'UAH'),
(807, 'Macedonia, the former Yugoslav Republic of', 'denar (pl. denars)', 'ден', 'MK', 'MKD', '389', 'MK.png', 'MKD'),
(818, 'Egypt', 'Egyptian pound', '£', 'EG', 'EGY', '20', 'EG.png', 'EGP'),
(826, 'United Kingdom', 'pound sterling', '£', 'GB', 'GBR', '44', 'GB.png', 'GBP'),
(831, 'Guernsey', 'Guernsey pound (GG2)', NULL, 'GG', 'GGY', '44', 'default.png', 'GGP (GG2)'),
(832, 'Jersey', 'Jersey pound (JE2)', NULL, 'JE', 'JEY', '44', 'default.png', 'JEP (JE2)'),
(833, 'Isle of Man', 'Manx pound (IM2)', NULL, 'IM', 'IMN', '44', 'default.png', 'IMP (IM2)'),
(834, 'Tanzania, United Republic of', 'Tanzanian shilling', 'TZS', 'TZ', 'TZA', '255', 'TZ.png', 'TZS'),
(840, 'United States', 'US dollar', '$', 'US', 'USA', '1', 'US.png', 'USD'),
(850, 'Virgin Islands, U.S.', 'US dollar', '$', 'VI', 'VIR', '1', 'VI.png', 'USD'),
(854, 'Burkina Faso', 'CFA franc (BCEAO)', 'XOF', 'BF', 'BFA', '226', 'BF.png', 'XOF'),
(858, 'Uruguay', 'Uruguayan peso', '$U', 'UY', 'URY', '598', 'UY.png', 'UYU'),
(860, 'Uzbekistan', 'sum (inv.)', 'лв', 'UZ', 'UZB', '998', 'UZ.png', 'UZS'),
(862, 'Venezuela, Bolivarian Republic of', 'bolívar fuerte (pl. bolívares fuertes)', 'Bs', 'VE', 'VEN', '58', 'VE.png', 'VEF'),
(876, 'Wallis and Futuna', 'CFP franc', 'XPF', 'WF', 'WLF', '681', 'WF.png', 'XPF'),
(882, 'Samoa', 'tala (inv.)', 'WS$', 'WS', 'WSM', '685', 'WS.png', 'WST'),
(887, 'Yemen', 'Yemeni rial', '﷼', 'YE', 'YEM', '967', 'YE.png', 'YER'),
(894, 'Zambia', 'Zambian kwacha (inv.)', 'ZK', 'ZM', 'ZMB', '260', 'ZM.png', 'ZMW');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `type` enum('fixed','percentage') DEFAULT 'fixed',
  `amount` decimal(15,2) DEFAULT 0.00,
  `min_ride_fare` decimal(15,2) DEFAULT 0.00,
  `is_unlimited` int(11) DEFAULT 1,
  `usage_per_coupon` int(11) DEFAULT 0,
  `usage_per_rider` int(11) DEFAULT 0,
  `used` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 1,
  `is_expired` int(11) DEFAULT 0,
  `is_apply_all` int(11) DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_riders`
--

CREATE TABLE `coupon_riders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `rider_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_service`
--

CREATE TABLE `coupon_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_vehicle_types`
--

CREATE TABLE `coupon_vehicle_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_zones`
--

CREATE TABLE `coupon_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `no_of_decimal` decimal(8,2) DEFAULT 2.00,
  `exchange_rate` double DEFAULT 1,
  `symbol_position` enum('before_price','after_price') DEFAULT 'before_price',
  `thousands_separator` enum('comma','period','space') DEFAULT 'comma',
  `decimal_separator` enum('comma','period','space') DEFAULT 'comma',
  `system_reserve` int(11) NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `symbol`, `flag`, `no_of_decimal`, `exchange_rate`, `symbol_position`, `thousands_separator`, `decimal_separator`, `system_reserve`, `status`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'USD', '$', 'US.png', 2.00, 1, 'before_price', 'comma', 'comma', 0, 1, 1, '2026-05-23 05:31:31', '2026-05-23 06:06:27', '2026-05-23 06:06:27'),
(2, 'INR', '₹', 'IN.png', 2.00, 83, 'before_price', 'comma', 'comma', 0, 1, 1, '2026-05-23 05:31:31', '2026-05-23 06:05:45', '2026-05-23 06:05:45'),
(3, 'GBP', '£', 'GB.png', 2.00, 100, 'before_price', 'comma', 'comma', 0, 1, 1, '2026-05-23 05:31:31', '2026-05-23 06:05:45', '2026-05-23 06:05:45'),
(4, 'EUR', '€', 'AU.png', 2.00, 56, 'before_price', 'comma', 'comma', 0, 1, 1, '2026-05-23 05:31:31', '2026-05-23 06:05:45', '2026-05-23 06:05:45'),
(5, 'BDT', 'Tk', 'BD.png', 2.00, 110.01, 'before_price', 'comma', 'comma', 0, 1, 1, '2026-05-23 05:31:31', '2026-05-23 06:05:45', '2026-05-23 06:05:45'),
(6, 'PKR', '₨', 'PK.png', 2.00, 1, 'before_price', 'comma', 'comma', 0, 1, 1, '2026-05-23 06:06:18', '2026-05-23 07:22:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customizations`
--

CREATE TABLE `customizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `html` longtext DEFAULT NULL,
  `css` longtext DEFAULT NULL,
  `js` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `imap_credentials` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`imap_credentials`)),
  `department_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `system_reserve` int(11) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `slug`, `description`, `status`, `imap_credentials`, `department_image_id`, `system_reserve`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"General Inquiry\"}', 'general-inquiry', '{\"en\":\"Providing a space for general questions and inquiries not covered by specific departments.\"}', 1, '{\"imap_host\":\"ENTER_IMAP_HOST\",\"imap_port\":\"ENTER_IMAP_PORT\",\"imap_encryption\":\"tls\",\"imap_username\":\"ENTER_IMAP_USERNAME\",\"imap_password\":\"ENTER_IMAP_PASSWORD\",\"imap_default_account\":\"default\",\"imap_protocol\":\"imap\"}', NULL, 1, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(2, '{\"en\":\"Technical Support\"}', 'technical-support', '{\"en\":\"Get swift solutions for software and hardware challenges in our \\\"Technical Support\\\" department. Our experts are here to empower you, offering quick fixes and guidance on optimization. Trust us for a seamless tech journey.\"}', 1, '{\"imap_host\":\"ENTER_IMAP_HOST\",\"imap_port\":\"ENTER_IMAP_PORT\",\"imap_encryption\":\"tls\",\"imap_username\":\"ENTER_IMAP_USERNAME\",\"imap_password\":\"ENTER_IMAP_PASSWORD\",\"imap_default_account\":\"default\",\"imap_protocol\":\"imap\"}', NULL, 1, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(3, '{\"en\":\"Installation Assistance\"}', 'installation-assistance', '{\"en\":\"For users seeking help with the installation of scripts, plugins, or other code snippets on the Pixel Desk platform.\"}', 1, '{\"imap_host\":\"ENTER_IMAP_HOST\",\"imap_port\":\"ENTER_IMAP_PORT\",\"imap_encryption\":\"tls\",\"imap_username\":\"ENTER_IMAP_USERNAME\",\"imap_password\":\"ENTER_IMAP_PASSWORD\",\"imap_default_account\":\"default\",\"imap_protocol\":\"imap\"}', NULL, 1, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(4, '{\"en\":\"Billing and Payments\"}', 'billing-and-payments', '{\"en\":\"Assistance with billing inquiries, payment issues, and account balance questions.\"}', 1, '{\"imap_host\":\"ENTER_IMAP_HOST\",\"imap_port\":\"ENTER_IMAP_PORT\",\"imap_encryption\":\"tls\",\"imap_username\":\"ENTER_IMAP_USERNAME\",\"imap_password\":\"ENTER_IMAP_PASSWORD\",\"imap_default_account\":\"default\",\"imap_protocol\":\"imap\"}', NULL, 0, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(5, '{\"en\":\"Account Management\"}', 'account-management', '{\"en\":\"Support for managing user accounts, including registration, password resets, and account settings.\"}', 1, '{\"imap_host\":\"ENTER_IMAP_HOST\",\"imap_port\":\"ENTER_IMAP_PORT\",\"imap_encryption\":\"tls\",\"imap_username\":\"ENTER_IMAP_USERNAME\",\"imap_password\":\"ENTER_IMAP_PASSWORD\",\"imap_default_account\":\"default\",\"imap_protocol\":\"imap\"}', NULL, 0, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(6, '{\"en\":\"Quality Assurance\"}', 'quality-assurance', '{\"en\":\"Support for quality assurance testing and feedback.\"}', 1, '{\"imap_host\":\"ENTER_IMAP_HOST\",\"imap_port\":\"ENTER_IMAP_PORT\",\"imap_encryption\":\"tls\",\"imap_username\":\"ENTER_IMAP_USERNAME\",\"imap_password\":\"ENTER_IMAP_PASSWORD\",\"imap_default_account\":\"default\",\"imap_protocol\":\"imap\"}', NULL, 0, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(7, '{\"en\":\"Customer Success\"}', 'customer-success', '{\"en\":\"Support focused on ensuring customer satisfaction and success with our services.\"}', 1, '{\"imap_host\":\"ENTER_IMAP_HOST\",\"imap_port\":\"ENTER_IMAP_PORT\",\"imap_encryption\":\"tls\",\"imap_username\":\"ENTER_IMAP_USERNAME\",\"imap_password\":\"ENTER_IMAP_PASSWORD\",\"imap_default_account\":\"default\",\"imap_protocol\":\"imap\"}', NULL, 0, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(8, '{\"en\":\"Maintenance Requests\"}', 'maintenance-requests', '{\"en\":\"Submit requests for scheduled or emergency maintenance.\"}', 1, '{\"imap_host\":\"ENTER_IMAP_HOST\",\"imap_port\":\"ENTER_IMAP_PORT\",\"imap_encryption\":\"tls\",\"imap_username\":\"ENTER_IMAP_USERNAME\",\"imap_password\":\"ENTER_IMAP_PASSWORD\",\"imap_default_account\":\"default\",\"imap_protocol\":\"imap\"}', NULL, 0, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_users`
--

CREATE TABLE `department_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_users`
--

INSERT INTO `department_users` (`id`, `department_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 17, NULL, NULL, NULL),
(2, 2, 17, NULL, NULL, NULL),
(3, 3, 17, NULL, NULL, NULL),
(4, 4, 17, NULL, NULL, NULL),
(5, 5, 17, NULL, NULL, NULL),
(6, 6, 17, NULL, NULL, NULL),
(7, 7, 17, NULL, NULL, NULL),
(8, 8, 17, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dispatcher_zones`
--

CREATE TABLE `dispatcher_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dispatcher_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dispatcher_zones`
--

INSERT INTO `dispatcher_zones` (`id`, `dispatcher_id`, `zone_id`) VALUES
(1, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `type` enum('vehicle','driver','fleet_manager') DEFAULT 'driver',
  `is_required` int(11) NOT NULL DEFAULT 0,
  `need_expired_date` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_documents`
--

CREATE TABLE `driver_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fleet_manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `document_id` bigint(20) UNSIGNED DEFAULT NULL,
  `document_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_incentive_progress`
--

CREATE TABLE `driver_incentive_progress` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_type_zone_id` bigint(20) UNSIGNED NOT NULL,
  `period_type` enum('daily','weekly') NOT NULL,
  `period_date` date NOT NULL,
  `current_rides` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_completed_level` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `completed_levels` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`completed_levels`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_preferences`
--

CREATE TABLE `driver_preferences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `preference_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_reviews`
--

CREATE TABLE `driver_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ride_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `rating` decimal(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_reviews`
--

INSERT INTO `driver_reviews` (`id`, `ride_id`, `service_id`, `service_category_id`, `driver_id`, `rider_id`, `message`, `rating`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 8, 4, 11, 'Polite customer, highly recommended!', 5.00, '2026-05-01 09:55:48', '2026-05-01 09:55:48', NULL),
(2, 5, 2, 6, 14, 10, 'Polite customer, highly recommended!', 5.00, '2026-05-01 21:34:48', '2026-05-01 21:34:48', NULL),
(3, 7, 2, 7, 13, 10, 'Polite customer, highly recommended!', 5.00, '2026-05-10 08:53:48', '2026-05-10 08:53:48', NULL),
(4, 9, 2, 7, 14, 10, 'Polite customer, highly recommended!', 5.00, '2026-05-12 20:26:48', '2026-05-12 20:26:48', NULL),
(5, 11, 1, 4, 12, 9, 'Polite customer, highly recommended!', 5.00, '2026-05-12 15:06:48', '2026-05-12 15:06:48', NULL),
(6, 13, 2, 7, 14, 7, 'Polite customer, highly recommended!', 4.00, '2026-05-03 10:34:48', '2026-05-03 10:34:48', NULL),
(7, 16, 2, 7, 13, 11, 'Polite customer, highly recommended!', 4.00, '2026-05-02 23:24:48', '2026-05-02 23:24:48', NULL),
(8, 18, 1, 2, 4, 9, 'Polite customer, highly recommended!', 5.00, '2026-05-01 10:05:48', '2026-05-01 10:05:48', NULL),
(9, 20, 2, 6, 14, 8, 'Polite customer, highly recommended!', 4.00, '2026-05-01 20:42:48', '2026-05-01 20:42:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `driver_rules`
--

CREATE TABLE `driver_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `rule_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_subscriptions`
--

CREATE TABLE `driver_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `duration` enum('daily','weekly','monthly','yearly') DEFAULT 'monthly',
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `total` double NOT NULL DEFAULT 0,
  `is_included_free_trial` int(11) DEFAULT 0,
  `is_active` int(11) DEFAULT 0,
  `payment_method` longtext DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_vehicle_types`
--

CREATE TABLE `driver_vehicle_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_rule_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vehicle_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_wallets`
--

CREATE TABLE `driver_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_wallets`
--

INSERT INTO `driver_wallets` (`id`, `driver_id`, `balance`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 1158.60, '2026-05-23 05:31:41', '2026-05-23 05:31:49', NULL),
(2, 12, 199.60, '2026-05-23 05:31:45', '2026-05-23 05:31:49', NULL),
(3, 13, 483.20, '2026-05-23 05:31:45', '2026-05-23 05:31:49', NULL),
(4, 14, 390.35, '2026-05-23 05:31:46', '2026-05-23 05:31:49', NULL),
(5, 15, 352.70, '2026-05-23 05:31:47', '2026-05-23 05:31:49', NULL),
(6, 16, 560.15, '2026-05-23 05:31:48', '2026-05-23 05:31:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `driver_wallet_histories`
--

CREATE TABLE `driver_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_wallet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `type` enum('credit','debit') DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `from_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_wallet_histories`
--

INSERT INTO `driver_wallet_histories` (`id`, `driver_wallet_id`, `order_id`, `currency_symbol`, `currency_code`, `amount`, `type`, `detail`, `from_user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '$', 'USD', 55.25, 'credit', 'Earnings credited for Ride #1000', 11, '2026-05-01 09:35:48', '2026-05-01 09:35:48', NULL),
(2, 6, 2, '$', 'USD', 58.65, 'credit', 'Earnings credited for Ride #1001', 9, '2026-04-30 11:12:48', '2026-04-30 11:12:48', NULL),
(3, 3, 3, '$', 'USD', 58.85, 'credit', 'Earnings credited for Ride #1002', 10, '2026-05-07 03:24:48', '2026-05-07 03:24:48', NULL),
(4, 6, 4, '$', 'USD', 65.45, 'credit', 'Earnings credited for Ride #1003', 11, '2026-05-20 13:22:48', '2026-05-20 13:22:48', NULL),
(5, 4, 5, '$', 'USD', 66.30, 'credit', 'Earnings credited for Ride #1004', 10, '2026-05-01 21:14:48', '2026-05-01 21:14:48', NULL),
(6, 6, 6, '$', 'USD', 66.95, 'credit', 'Earnings credited for Ride #1005', 11, '2026-05-07 08:01:48', '2026-05-07 08:01:48', NULL),
(7, 3, 7, '$', 'USD', 45.90, 'credit', 'Earnings credited for Ride #1006', 10, '2026-05-10 08:33:48', '2026-05-10 08:33:48', NULL),
(8, 1, 8, '$', 'USD', 65.45, 'credit', 'Earnings credited for Ride #1007', 10, '2026-05-03 02:12:48', '2026-05-03 02:12:48', NULL),
(9, 4, 9, '$', 'USD', 37.00, 'credit', 'Earnings credited for Ride #1008', 10, '2026-05-12 20:06:48', '2026-05-12 20:06:48', NULL),
(10, 2, 10, '$', 'USD', 60.70, 'credit', 'Earnings credited for Ride #1009', 3, '2026-05-10 22:00:48', '2026-05-10 22:00:48', NULL),
(11, 2, 11, '$', 'USD', 30.90, 'credit', 'Earnings credited for Ride #1010', 9, '2026-05-12 14:46:48', '2026-05-12 14:46:48', NULL),
(12, 4, 12, '$', 'USD', 45.50, 'credit', 'Earnings credited for Ride #1011', 9, '2026-05-10 02:59:48', '2026-05-10 02:59:48', NULL),
(13, 4, 13, '$', 'USD', 36.55, 'credit', 'Earnings credited for Ride #1012', 7, '2026-05-03 10:14:48', '2026-05-03 10:14:48', NULL),
(14, 3, 14, '$', 'USD', 43.55, 'credit', 'Earnings credited for Ride #1013', 10, '2026-05-05 18:12:48', '2026-05-05 18:12:48', NULL),
(15, 5, 15, '$', 'USD', 52.70, 'credit', 'Earnings credited for Ride #1014', 8, '2026-05-22 04:36:48', '2026-05-22 04:36:48', NULL),
(16, 3, 16, '$', 'USD', 56.95, 'credit', 'Earnings credited for Ride #1015', 11, '2026-05-02 23:04:48', '2026-05-02 23:04:48', NULL),
(17, 3, 17, '$', 'USD', 39.95, 'credit', 'Earnings credited for Ride #1016', 11, '2026-05-02 01:07:48', '2026-05-02 01:07:48', NULL),
(18, 1, 18, '$', 'USD', 37.90, 'credit', 'Earnings credited for Ride #1017', 9, '2026-05-01 09:45:48', '2026-05-01 09:45:48', NULL),
(19, 6, 19, '$', 'USD', 22.10, 'credit', 'Earnings credited for Ride #1018', 8, '2026-05-08 23:46:48', '2026-05-08 23:46:48', NULL),
(20, 4, 20, '$', 'USD', 34.00, 'credit', 'Earnings credited for Ride #1019', 8, '2026-05-01 20:22:48', '2026-05-01 20:22:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `driver_zones`
--

CREATE TABLE `driver_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_zones`
--

INSERT INTO `driver_zones` (`id`, `driver_id`, `zone_id`) VALUES
(1, 4, 1),
(2, 12, 1),
(3, 13, 1),
(4, 14, 1),
(5, 15, 1),
(6, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext DEFAULT NULL,
  `button_text` longtext DEFAULT NULL,
  `button_url` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extra_charges`
--

CREATE TABLE `extra_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `ride_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fleet_documents`
--

CREATE TABLE `fleet_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fleet_manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `document_id` bigint(20) UNSIGNED DEFAULT NULL,
  `document_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fleet_manager_wallets`
--

CREATE TABLE `fleet_manager_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fleet_manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fleet_manager_wallets`
--

INSERT INTO `fleet_manager_wallets` (`id`, `fleet_manager_id`, `balance`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 1000.00, '2026-05-23 05:31:41', '2026-05-23 05:31:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fleet_vehicles`
--

CREATE TABLE `fleet_vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fleet_manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vehicle_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fleet_wallet_histories`
--

CREATE TABLE `fleet_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fleet_wallet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `type` enum('credit','debit') DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `from_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fleet_withdraw_requests`
--

CREATE TABLE `fleet_withdraw_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) DEFAULT 0.00,
  `message` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `fleet_wallet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fleet_manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_type` enum('paypal','bank') DEFAULT 'bank',
  `is_used_by_admin` int(11) NOT NULL DEFAULT 0,
  `is_used` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_fields`
--

CREATE TABLE `form_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `is_required` int(11) DEFAULT 1,
  `select_type` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `system_reserve` int(11) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_fields`
--

INSERT INTO `form_fields` (`id`, `label`, `name`, `type`, `placeholder`, `is_required`, `select_type`, `options`, `status`, `system_reserve`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Name', 'name', 'text', 'Enter Name', 1, NULL, NULL, 1, 1, 1, '2026-05-23 05:31:50', '2026-05-23 05:31:50', NULL),
(2, 'Email', 'email', 'email', 'Enter Email', 1, NULL, NULL, 1, 1, 1, '2026-05-23 05:31:50', '2026-05-23 05:31:50', NULL),
(3, 'Subject', 'subject', 'text', 'Enter Subject', 1, NULL, NULL, 1, 1, 1, '2026-05-23 05:31:50', '2026-05-23 05:31:50', NULL),
(4, 'Description', 'description', 'textarea', 'Enter Description', 1, NULL, NULL, 1, 1, 1, '2026-05-23 05:31:50', '2026-05-23 05:31:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hourly_packages`
--

CREATE TABLE `hourly_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `distance_type` enum('mile','km') DEFAULT 'km',
  `distance` decimal(8,2) DEFAULT NULL,
  `hour` decimal(8,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incentives`
--

CREATE TABLE `incentives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED NOT NULL,
  `incentive_level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `applicable_date` date NOT NULL,
  `target_rides` int(11) NOT NULL,
  `bonus_amount` decimal(10,2) NOT NULL,
  `is_achieved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incentive_levels`
--

CREATE TABLE `incentive_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_type_zone_id` bigint(20) UNSIGNED NOT NULL,
  `period_type` enum('daily','weekly') NOT NULL,
  `level_number` tinyint(3) UNSIGNED NOT NULL,
  `target_rides` int(10) UNSIGNED NOT NULL,
  `incentive_amount` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_bases`
--

CREATE TABLE `knowledge_bases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `knowledge_thumbnail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `knowledge_meta_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_categories`
--

CREATE TABLE `knowledge_base_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `category_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` varchar(255) NOT NULL DEFAULT 'post',
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `category_meta_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_tags`
--

CREATE TABLE `knowledge_base_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'post',
  `description` longtext DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_categories`
--

CREATE TABLE `knowledge_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `knowledge_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_tags`
--

CREATE TABLE `knowledge_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `knowledge_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `landing_pages`
--

CREATE TABLE `landing_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landing_pages`
--

INSERT INTO `landing_pages` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":{\"header\":{\"logo\":\"/front/images/placeholder/142x36.png\",\"menus\":[\"home\",\"why_taxi_booking\",\"how_it_works\",\"faqs\",\"blogs\",\"testimonials\",\"raise_tickets\"],\"status\":\"1\",\"btn_url\":\"#app\",\"btn_text\":\"Book Ride\"},\"home\":{\"title\":\"Ride with Comfort, Drive with Confidence\",\"description\":\"Where comfort meets confidence—ride with ease, drive with pride, and let us handle the rest, ensuring every journey is safe, reliable, and truly unforgettable.\",\"button\":[{\"text\":\"User App\",\"type\":\"gradient\",\"url\":\"https://play.google.com/store\"},{\"text\":\"Driver App\",\"type\":\"outline\",\"url\":\"https://play.google.com/store\"}],\"right_phone_image\":\"/front/images/placeholder/1.png\",\"left_phone_image\":\"/front/images/placeholder/2.png\",\"bg_image\":\"\",\"status\":\"1\"},\"statistics\":{\"status\":\"1\",\"title\":\"Driving Success Together\",\"description\":\"From countless completed rides to a thriving network of users and drivers, our journey is defined by excellence and customer satisfaction.\",\"counters\":[{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"Completed Rides\",\"description\":\"Delivering trusted rides for countless happy Riders daily.\",\"count\":\"100000\"},{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"Active Users\",\"description\":\"Connecting with thousands who trust us for reliable rides.\",\"count\":\"50000\"},{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"Active Drivers\",\"description\":\"Dedicated drivers ensuring safe, timely, and comfortable rides.\",\"count\":\"30000\"},{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"Customer Rating\",\"description\":\"Positive ratings that reflect trust and service excellence.\",\"count\":\"4.9\"}]},\"feature\":{\"status\":\"1\",\"title\":\"Why Taxido Stands Out as Your Go-To Ride Option\",\"description\":\"With Taxido, enjoy affordable rates, safe journeys, and a user-friendly platform that makes travel easier and more enjoyable than ever before.\",\"images\":[{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Track Your Driver Live\",\"description\":\"Stay updated on your driver’s location every moment.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Flexible Vehicle Rentals\",\"description\":\"Choose and rent vehicles tailored to your specific needs.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Bidding Simplified\",\"description\":\"Accept or reject bids effortlessly for complete booking control.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Convenient Hourly Packages\",\"description\":\"Access services in your preferred language without barriers.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Language Options for Everyone\",\"description\":\"Access services in your preferred language without barriers.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Secure Payment Choices\",\"description\":\"Multiple secure payment options to fit your preference.\"}]},\"ride\":{\"status\":\"1\",\"title\":\"How Taxido Makes Your Ride Easy\",\"description\":\"Get started in just a few simple steps. Choose your ride, track your driver, and enjoy a smooth, hassle-free journey with Taxido..\",\"step\":[{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Sign Up\",\"description\":\"Create your account in minutes by entering your details—quick and easy!\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Set Your Pickup Location\",\"description\":\"Choose where you’d like to be picked up and let us handle the rest.\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Find Your Driver\",\"description\":\"Get paired with a nearby driver and track their location in real-time..\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Complete Your Payment\",\"description\":\"Pay securely using your preferred payment option through our multi-gateway support.\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Rate Your Ride\",\"description\":\"Rate your ride and help us improve for even better experiences ahead.\"}]},\"faq\":{\"title\":\"Frequently Asked Questions\",\"sub_title\":\"Got questions? Explore our FAQs for quick answers about Taxido\'s features, services, and app usage. Booking a ride, scheduling, or exploring services? Find all the answers here.\",\"faqs\":[],\"status\":\"1\"},\"blog\":{\"title\":\"Stay Updated with Taxido\",\"sub_title\":\"Be the first to know about exciting offers, latest updates, and helpful travel tips from Taxido. Stay informed and make the most out of your rides with insights and announcements tailored just for you.\",\"blogs\":[],\"status\":\"1\"},\"testimonial\":{\"title\":\"What Our Users Say\",\"sub_title\":\"Real stories from our satisfied users. Taxido is transforming the way people commute, providing safe, reliable, and convenient rides.\",\"testimonials\":[],\"status\":\"1\"},\"footer\":{\"footer_logo\":\"front/images/placeholder/197x50.png\",\"description\":\"Get started in minutes—choose your ride, track your driver, and enjoy a hassle-free journey with Taxido!\",\"newsletter\":{\"label\":\"Subscribe our Newsletter\",\"placeholder\":\"Enter email address\",\"button_text\":\"Subscribe\"},\"play_store_url\":\"#!\",\"app_store_url\":\"#!\",\"social_links\":{\"facebook\":\"https://www.facebook.com\",\"google\":\"https://www.google.com\",\"instagram\":\"https://www.instagram.com\",\"twitter-x\":\"https://twitter.com\",\"whatsapp\":\"https://wa.me/your-number\",\"linkedin\":\"https: //linkedin.com\"},\"pages\":[],\"right_image\":\"front/images/placeholder/638x528.png\",\"copyright\":\"© Taxido All Rights & Reserves -\",\"status\":\"1\"},\"seo\":{\"status\":\"1\",\"og_title\":\"Taxido - The Future of Convenient Transportation\",\"meta_tags\":\"taxido, ride-hailing, taxi service, transportation, car service, book a ride, city transport, ride sharing, reliable taxi, on-demand rides.\",\"meta_image\":\"/front/images/logo.svg\",\"meta_title\":\"Taxido - Your Reliable Ride-Hailing Partner\",\"og_description\":\"Discover Taxido, your ultimate ride-hailing solution. Enjoy fast, safe, and reliable transportation at your fingertips. Download our app today for a seamless travel experience.\",\"meta_description\":\"Experience seamless and convenient transportation with Taxido. Book your ride easily and get to your destination safely with our reliable and efficient ride-hailing service.\"},\"analytics\":{\"status\":\"1\",\"pixel_id\":\"XXXXXXXXXXXXX\",\"pixel_status\":\"1\",\"measurement_id\":\"UA-XXXXXX-XX\",\"tag_id\":\"XXXXXXXXXXXXX\",\"chat_bot_id\":\"XXXXXXXXXXX\"}},\"fr\":{\"header\":{\"logo\":\"/front/images/placeholder/142x36.png\",\"menus\":[\"home\",\"why_taxi_booking\",\"how_it_works\",\"faqs\",\"blogs\",\"testimonials\",\"raise_tickets\"],\"status\":\"1\",\"btn_url\":\"#app\",\"btn_text\":\"Réserver une course\"},\"home\":{\"title\":\"Conduisez avec confiance, voyagez avec confort\",\"description\":\"Là où le confort rencontre la confiance—voyagez en toute simplicité, conduisez avec fierté, et laissez-nous nous occuper du reste, en veillant à ce que chaque voyage soit sûr, fiable et vraiment inoubliable.\",\"button\":[{\"text\":\"Application Utilisateur\",\"type\":\"gradient\",\"url\":\"https://play.google.com/store\"},{\"text\":\"Application Conducteur\",\"type\":\"outline\",\"url\":\"https://play.google.com/store\"}],\"right_phone_image\":\"/front/images/placeholder/1.png\",\"left_phone_image\":\"/front/images/placeholder/2.png\",\"bg_image\":\"\",\"status\":\"1\"},\"statistics\":{\"status\":\"1\",\"title\":\"Conduire le succès ensemble\",\"description\":\"De nombreux trajets effectués à un réseau florissant d\'utilisateurs et de conducteurs, notre voyage est défini par l\'excellence et la satisfaction client.\",\"counters\":[{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"Trajets effectués\",\"description\":\"Offrir des trajets de confiance à d\'innombrables passagers heureux quotidiennement.\",\"count\":\"100000\"},{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"Utilisateurs actifs\",\"description\":\"Connecter des milliers de personnes qui nous font confiance pour des trajets fiables.\",\"count\":\"50000\"},{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"Conducteurs actifs\",\"description\":\"Des conducteurs dévoués assurant des trajets sûrs, ponctuels et confortables.\",\"count\":\"30000\"},{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"Évaluation des clients\",\"description\":\"Des évaluations positives qui reflètent la confiance et l\'excellence du service.\",\"count\":\"4.9\"}]},\"feature\":{\"status\":\"1\",\"title\":\"Pourquoi Taxido se distingue comme votre option de trajet préférée\",\"description\":\"Avec Taxido, profitez de tarifs abordables, de voyages sûrs et d\'une plateforme conviviale qui rend les déplacements plus faciles et plus agréables que jamais.\",\"images\":[{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Suivez votre conducteur en direct\",\"description\":\"Restez informé de la localisation de votre conducteur à tout moment.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Location de véhicules flexible\",\"description\":\"Choisissez et louez des véhicules adaptés à vos besoins spécifiques.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Enchères simplifiées\",\"description\":\"Acceptez ou refusez les offres sans effort pour un contrôle total de votre réservation.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Forfaits horaires pratiques\",\"description\":\"Accédez aux services dans votre langue préférée sans barrières.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Options de langue pour tous\",\"description\":\"Accédez aux services dans votre langue préférée sans barrières.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Choix de paiement sécurisés\",\"description\":\"Plusieurs options de paiement sécurisées pour répondre à vos préférences.\"}]},\"ride\":{\"status\":\"1\",\"title\":\"Comment Taxido facilite votre trajet\",\"description\":\"Commencez en quelques étapes simples. Choisissez votre trajet, suivez votre conducteur et profitez d\'un voyage fluide et sans tracas avec Taxido.\",\"step\":[{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Inscrivez-vous\",\"description\":\"Créez votre compte en quelques minutes en entrant vos informations—rapide et facile!\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Définissez votre lieu de prise en charge\",\"description\":\"Choisissez l\'endroit où vous souhaitez être pris en charge et laissez-nous nous occuper du reste.\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Trouvez votre conducteur\",\"description\":\"Soyez jumelé à un conducteur à proximité et suivez sa localisation en temps réel.\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Finalisez votre paiement\",\"description\":\"Payez en toute sécurité en utilisant votre option de paiement préférée grâce à notre support multi-passerelles.\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Évaluez votre trajet\",\"description\":\"Évaluez votre trajet et aidez-nous à nous améliorer pour des expériences encore meilleures à l\'avenir.\"}]},\"faq\":{\"title\":\"Foire aux questions\",\"sub_title\":\"Des questions? Explorez notre FAQ pour des réponses rapides sur les fonctionnalités, services et utilisation de l\'application Taxido. Réserver un trajet, planifier ou explorer des services? Trouvez toutes les réponses ici.\",\"faqs\":[],\"status\":\"1\"},\"blog\":{\"title\":\"Restez informé avec Taxido\",\"sub_title\":\"Soyez le premier à connaître les offres passionnantes, les dernières mises à jour et les conseils de voyage utiles de Taxido. Restez informé et profitez au maximum de vos trajets avec des informations et des annonces adaptées spécialement pour vous.\",\"blogs\":[],\"status\":\"1\"},\"testimonial\":{\"title\":\"Ce que disent nos utilisateurs\",\"sub_title\":\"Des histoires réelles de nos utilisateurs satisfaits. Taxido transforme la façon dont les gens se déplacent, en offrant des trajets sûrs, fiables et pratiques.\",\"testimonials\":[],\"status\":\"1\"},\"footer\":{\"footer_logo\":\"front/images/placeholder/197x50.png\",\"description\":\"Commencez en quelques minutes—choisissez votre trajet, suivez votre conducteur et profitez d\'un voyage sans tracas avec Taxido!\",\"newsletter\":{\"label\":\"Abonnez-vous à notre newsletter\",\"placeholder\":\"Entrez votre adresse e-mail\",\"button_text\":\"S\'abonner\"},\"play_store_url\":\"#!\",\"app_store_url\":\"#!\",\"quick_links\":[\"Accueil\",\"Pourquoi Taxido?\",\"Comment ça marche\",\"FAQs\",\"Blogs\",\"Témoignages\"],\"pages\":[],\"right_image\":\"front/images/placeholder/638x528.png\",\"copyright\":\"© Taxido Tous droits réservés -\",\"status\":\"1\"},\"seo\":{\"status\":\"1\",\"og_title\":\"Taxido - L\'avenir des transports pratiques\",\"meta_tags\":\"taxido, ride-hailing, service de taxi, transport, service de voiture, réserver un trajet, transport urbain, covoiturage, taxi fiable, trajets à la demande.\",\"meta_image\":\"/front/images/logo.svg\",\"meta_title\":\"Taxido - Votre partenaire fiable de transport\",\"og_description\":\"Découvrez Taxido, votre solution ultime de transport. Profitez de transports rapides, sûrs et fiables à portée de main. Téléchargez notre application dès aujourd\'hui pour une expérience de voyage fluide.\",\"meta_description\":\"Vivez une expérience de transport fluide et pratique avec Taxido. Réservez facilement votre trajet et arrivez à destination en toute sécurité avec notre service de transport fiable et efficace.\"},\"analytics\":{\"status\":\"1\",\"pixel_id\":\"XXXXXXXXXXXXX\",\"pixel_status\":\"1\",\"measurement_id\":\"UA-XXXXXX-XX\",\"tag_id\":\"XXXXXXXXXXXXX\"}},\"de\":{\"header\":{\"logo\":\"/front/images/placeholder/142x36.png\",\"menus\":[\"home\",\"why_taxi_booking\",\"how_it_works\",\"faqs\",\"blogs\",\"testimonials\",\"raise_tickets\"],\"status\":\"1\",\"btn_url\":\"#app\",\"btn_text\":\"Fahrt buchen\"},\"home\":{\"title\":\"Fahren Sie mit Komfort, fahren Sie mit Selbstvertrauen\",\"description\":\"Wo Komfort auf Selbstvertrauen trifft—fahren Sie mit Leichtigkeit, fahren Sie mit Stolz und überlassen Sie uns den Rest, um sicherzustellen, dass jede Reise sicher, zuverlässig und wirklich unvergesslich ist.\",\"button\":[{\"text\":\"Benutzer-App\",\"type\":\"gradient\"},{\"text\":\"Fahrer-App\",\"type\":\"outline\"}],\"right_phone_image\":\"/front/images/placeholder/1.png\",\"left_phone_image\":\"/front/images/placeholder/2.png\",\"bg_image\":\"\",\"status\":\"1\"},\"statistics\":{\"status\":\"1\",\"title\":\"Gemeinsam Erfolg fahren\",\"description\":\"Von unzähligen abgeschlossenen Fahrten zu einem florierenden Netzwerk von Nutzern und Fahrern—unsere Reise ist geprägt von Exzellenz und Kundenzufriedenheit.\",\"counters\":[{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"Abgeschlossene Fahrten\",\"description\":\"Täglich vertrauenswürdige Fahrten für unzählige glückliche Fahrgäste.\",\"count\":\"100000\"},{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"Aktive Nutzer\",\"description\":\"Verbinden Sie sich mit Tausenden, die uns für zuverlässige Fahrten vertrauen.\",\"count\":\"50000\"},{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"Aktive Fahrer\",\"description\":\"Engagierte Fahrer, die sichere, pünktliche und komfortable Fahrten gewährleisten.\",\"count\":\"30000\"},{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"Kundenbewertung\",\"description\":\"Positive Bewertungen, die Vertrauen und Servicequalität widerspiegeln.\",\"count\":\"4.9\"}]},\"feature\":{\"status\":\"1\",\"title\":\"Warum Taxido Ihre bevorzugte Fahrtoption ist\",\"description\":\"Mit Taxido genießen Sie günstige Preise, sichere Fahrten und eine benutzerfreundliche Plattform, die das Reisen einfacher und angenehmer macht als je zuvor.\",\"images\":[{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Verfolgen Sie Ihren Fahrer live\",\"description\":\"Bleiben Sie über den Standort Ihres Fahrers auf dem Laufenden.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Flexible Fahrzeugvermietung\",\"description\":\"Wählen und mieten Sie Fahrzeuge, die auf Ihre spezifischen Bedürfnisse zugeschnitten sind.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Bietverfahren vereinfacht\",\"description\":\"Akzeptieren oder lehnen Sie Gebote mühelos ab, um die vollständige Kontrolle über Ihre Buchung zu haben.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Praktische Stundenpakete\",\"description\":\"Greifen Sie auf Dienstleistungen in Ihrer bevorzugten Sprache ohne Barrieren zu.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Sprachoptionen für jeden\",\"description\":\"Greifen Sie auf Dienstleistungen in Ihrer bevorzugten Sprache ohne Barrieren zu.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"Sichere Zahlungsmöglichkeiten\",\"description\":\"Mehrere sichere Zahlungsoptionen, die Ihren Vorlieben entsprechen.\"}]},\"ride\":{\"status\":\"1\",\"title\":\"Wie Taxido Ihre Fahrt erleichtert\",\"description\":\"Starten Sie in wenigen einfachen Schritten. Wählen Sie Ihre Fahrt, verfolgen Sie Ihren Fahrer und genießen Sie eine reibungslose, stressfreie Fahrt mit Taxido.\",\"step\":[{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Registrieren\",\"description\":\"Erstellen Sie Ihr Konto in wenigen Minuten, indem Sie Ihre Daten eingeben—schnell und einfach!\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Legen Sie Ihren Abholort fest\",\"description\":\"Wählen Sie den Ort, an dem Sie abgeholt werden möchten, und überlassen Sie uns den Rest.\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Finden Sie Ihren Fahrer\",\"description\":\"Werden Sie mit einem Fahrer in Ihrer Nähe verbunden und verfolgen Sie dessen Standort in Echtzeit.\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Schließen Sie Ihre Zahlung ab\",\"description\":\"Bezahlen Sie sicher mit Ihrer bevorzugten Zahlungsmethode über unsere Multi-Gateway-Unterstützung.\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"Bewerten Sie Ihre Fahrt\",\"description\":\"Bewerten Sie Ihre Fahrt und helfen Sie uns, uns für noch bessere Erfahrungen in der Zukunft zu verbessern.\"}]},\"faq\":{\"title\":\"Häufig gestellte Fragen\",\"sub_title\":\"Haben Sie Fragen? Durchsuchen Sie unsere FAQs für schnelle Antworten zu den Funktionen, Dienstleistungen und der Nutzung der Taxido-App. Eine Fahrt buchen, planen oder Dienstleistungen erkunden? Hier finden Sie alle Antworten.\",\"faqs\":[],\"status\":\"1\"},\"blog\":{\"title\":\"Bleiben Sie mit Taxido auf dem Laufenden\",\"sub_title\":\"Seien Sie der Erste, der spannende Angebote, die neuesten Updates und hilfreiche Reisetipps von Taxido erfährt. Bleiben Sie informiert und machen Sie das Beste aus Ihren Fahrten mit maßgeschneiderten Einblicken und Ankündigungen.\",\"blogs\":[],\"status\":\"1\"},\"testimonial\":{\"title\":\"Was unsere Nutzer sagen\",\"sub_title\":\"Echte Geschichten von unseren zufriedenen Nutzern. Taxido verändert die Art und Weise, wie Menschen pendeln, und bietet sichere, zuverlässige und bequeme Fahrten.\",\"testimonials\":[],\"status\":\"1\"},\"footer\":{\"footer_logo\":\"front/images/placeholder/197x50.png\",\"description\":\"Starten Sie in wenigen Minuten—wählen Sie Ihre Fahrt, verfolgen Sie Ihren Fahrer und genießen Sie eine stressfreie Fahrt mit Taxido!\",\"newsletter\":{\"label\":\"Abonnieren Sie unseren Newsletter\",\"placeholder\":\"Geben Sie Ihre E-Mail-Adresse ein\",\"button_text\":\"Abonnieren\"},\"play_store_url\":\"#!\",\"app_store_url\":\"#!\",\"quick_links\":[\"Startseite\",\"Warum Taxido?\",\"Wie es funktioniert\",\"FAQs\",\"Blogs\",\"Erfahrungsberichte\"],\"pages\":[],\"right_image\":\"front/images/placeholder/638x528.png\",\"copyright\":\"© Taxido Alle Rechte vorbehalten -\",\"status\":\"1\"},\"seo\":{\"status\":\"1\",\"og_title\":\"Taxido - Die Zukunft des bequemen Transports\",\"meta_tags\":\"taxido, ride-hailing, Taxiservice, Transport, Autoservice, Fahrt buchen, Stadtverkehr, Mitfahrgelegenheit, zuverlässiges Taxi, On-Demand-Fahrten.\",\"meta_image\":\"/front/images/logo.svg\",\"meta_title\":\"Taxido - Ihr zuverlässiger Ride-Hailing-Partner\",\"og_description\":\"Entdecken Sie Taxido, Ihre ultimative Ride-Hailing-Lösung. Genießen Sie schnellen, sicheren und zuverlässigen Transport. Laden Sie unsere App noch heute herunter für ein nahtloses Reiseerlebnis.\",\"meta_description\":\"Erleben Sie nahtlosen und bequemen Transport mit Taxido. Buchen Sie Ihre Fahrt einfach und kommen Sie sicher an Ihr Ziel mit unserem zuverlässigen und effizienten Ride-Hailing-Service.\"},\"analytics\":{\"status\":\"1\",\"pixel_id\":\"XXXXXXXXXXXXX\",\"pixel_status\":\"1\",\"measurement_id\":\"UA-XXXXXX-XX\",\"tag_id\":\"XXXXXXXXXXXXX\"}},\"ar\":{\"header\":{\"logo\":\"/front/images/placeholder/142x36.png\",\"menus\":[\"home\",\"why_taxi_booking\",\"how_it_works\",\"faqs\",\"blogs\",\"testimonials\",\"raise_tickets\"],\"status\":\"1\",\"btn_url\":\"#app\",\"btn_text\":\"فتح تذكرة\"},\"home\":{\"title\":\"اركب براحة، قُد بثقة\",\"description\":\"حيث تلتقي الراحة بالثقة—اركب بسهولة، قُد بفخر، ودعنا نتعامل مع الباقي، لضمان أن تكون كل رحلة آمنة وموثوقة ولا تُنسى حقًا.\",\"button\":[{\"text\":\"تطبيق المستخدم\",\"type\":\"gradient\",\"url\":\"https://play.google.com/store\"},{\"text\":\"تطبيق السائق\",\"type\":\"outline\",\"url\":\"https://play.google.com/store\"}],\"right_phone_image\":\"/front/images/placeholder/1.png\",\"left_phone_image\":\"/front/images/placeholder/2.png\",\"bg_image\":\"\",\"status\":\"1\"},\"statistics\":{\"status\":\"1\",\"title\":\"قيادة النجاح معًا\",\"description\":\"من عدد لا يحصى من الرحلات المكتملة إلى شبكة مزدهرة من المستخدمين والسائقين، يتم تعريف رحلتنا بالتميز ورضا العملاء.\",\"counters\":[{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"رحلات مكتملة\",\"description\":\"تقديم رحلات موثوقة لعدد لا يحصى من الركاب السعداء يوميًا.\",\"count\":\"100000\"},{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"مستخدمين نشطين\",\"description\":\"التواصل مع الآلاف الذين يثقون بنا لرحلات موثوقة.\",\"count\":\"50000\"},{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"سائقين نشطين\",\"description\":\"سائقون مخلصون يضمنون رحلات آمنة وفي الوقت المحدد ومريحة.\",\"count\":\"30000\"},{\"icon\":\"front/images/placeholder/50x50.png\",\"text\":\"تقييم العملاء\",\"description\":\"تقييمات إيجابية تعكس الثقة وتميز الخدمة.\",\"count\":\"4.9\"}]},\"feature\":{\"status\":\"1\",\"title\":\"لماذا Taxido تبرز كخيارك المفضل للرحلات\",\"description\":\"مع Taxido، استمتع بأسعار معقولة، رحلات آمنة، ومنصة سهلة الاستخدام تجعل السفر أسهل وأكثر متعة من أي وقت مضى.\",\"images\":[{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"تتبع سائقك مباشرة\",\"description\":\"ابق على اطلاع بموقع سائقك في كل لحظة.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"تأجير مركبات مرن\",\"description\":\"اختر واستأجر مركبات مصممة خصيصًا لاحتياجاتك.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"تبسيط العطاءات\",\"description\":\"اقبل أو ارفض العطاءات بسهولة للتحكم الكامل في الحجز.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"باقات ساعة مريحة\",\"description\":\"الوصول إلى الخدمات بلغتك المفضلة دون عوائق.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"خيارات اللغة للجميع\",\"description\":\"الوصول إلى الخدمات بلغتك المفضلة دون عوائق.\"},{\"image\":\"front/images/placeholder/486x496.png\",\"title\":\"خيارات دفع آمنة\",\"description\":\"خيارات دفع متعددة وآمنة تناسب تفضيلاتك.\"}]},\"ride\":{\"status\":\"1\",\"title\":\"كيف تجعل Taxido رحلتك سهلة\",\"description\":\"ابدأ في بضع خطوات بسيطة. اختر رحلتك، تتبع سائقك، واستمتع برحلة سلسة وخالية من المتاعب مع Taxido.\",\"step\":[{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"سجل\",\"description\":\"أنشئ حسابك في دقائق عن طريق إدخال تفاصيلك—سريع وسهل!\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"حدد موقع الالتقاط\",\"description\":\"اختر المكان الذي ترغب في الالتقاط منه ودعنا نتعامل مع الباقي.\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"ابحث عن سائقك\",\"description\":\"تم إقرانك بسائق قريب وتتبع موقعه في الوقت الفعلي.\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"أكمل الدفع\",\"description\":\"ادفع بأمان باستخدام خيار الدفع المفضل لديك من خلال دعمنا متعدد البوابات.\"},{\"image\":\"front/images/placeholder/348x701.png\",\"title\":\"قيم رحلتك\",\"description\":\"قيم رحلتك وساعدنا على التحسين لتجارب أفضل في المستقبل.\"}]},\"faq\":{\"title\":\"الأسئلة الشائعة\",\"sub_title\":\"هل لديك أسئلة؟ استكشف الأسئلة الشائعة للحصول على إجابات سريعة حول ميزات Taxido وخدماتها واستخدام التطبيق. حجز رحلة، جدولة، أو استكشاف الخدمات؟ ستجد جميع الإجابات هنا.\",\"faqs\":[],\"status\":\"1\"},\"blog\":{\"title\":\"ابقَ على اطلاع مع Taxido\",\"sub_title\":\"كن أول من يعرف عن العروض المثيرة، آخر التحديثات، ونصائح السفر المفيدة من Taxido. ابقَ على اطلاع واستفد إلى أقصى حد من رحلاتك مع رؤى وإعلانات مصممة خصيصًا لك.\",\"blogs\":[],\"status\":\"1\"},\"testimonial\":{\"title\":\"ما يقوله مستخدمونا\",\"sub_title\":\"قصص حقيقية من مستخدمينا الراضين. Taxido تغير الطريقة التي يتنقل بها الناس، وتوفر رحلات آمنة وموثوقة ومريحة.\",\"testimonials\":[],\"status\":\"1\"},\"footer\":{\"footer_logo\":\"front/images/placeholder/197x50.png\",\"description\":\"ابدأ في دقائق—اختر رحلتك، تتبع سائقك، واستمتع برحلة خالية من المتاعب مع Taxido!\",\"newsletter\":{\"label\":\"اشترك في نشرتنا الإخبارية\",\"placeholder\":\"أدخل عنوان البريد الإلكتروني\",\"button_text\":\"اشتراك\"},\"play_store_url\":\"#!\",\"app_store_url\":\"#!\",\"quick_links\":[\"الرئيسية\",\"لماذا Taxido؟\",\"كيف تعمل\",\"الأسئلة الشائعة\",\"المدونات\",\"الشهادات\"],\"pages\":[],\"right_image\":\"front/images/placeholder/638x528.png\",\"copyright\":\"© Taxido جميع الحقوق محفوظة -\",\"status\":\"1\"},\"seo\":{\"status\":\"1\",\"og_title\":\"Taxido - مستقبل النقل المريح\",\"meta_tags\":\"taxido, ride-hailing, خدمة سيارات الأجرة, نقل, خدمة سيارات, حجز رحلة, نقل حضري, مشاركة الركوب, سيارات أجرة موثوقة, رحلات عند الطلب.\",\"meta_image\":\"/front/images/logo.svg\",\"meta_title\":\"Taxido - شريكك الموثوق في النقل\",\"og_description\":\"اكتشف Taxido، الحل النهائي للنقل. استمتع بنقل سريع وآمن وموثوق في متناول يدك. قم بتنزيل تطبيقنا اليوم لتجربة سفر سلسة.\",\"meta_description\":\"جرب النقل السلس والمريح مع Taxido. احجز رحلتك بسهولة ووصل إلى وجهتك بأمان مع خدمة النقل الموثوقة والفعالة لدينا.\"},\"analytics\":{\"status\":\"1\",\"pixel_id\":\"XXXXXXXXXXXXX\",\"pixel_status\":\"1\",\"measurement_id\":\"UA-XXXXXX-XX\",\"tag_id\":\"XXXXXXXXXXXXX\"}}}', '2026-05-23 05:31:32', '2026-05-23 05:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `app_locale` varchar(255) DEFAULT NULL,
  `is_rtl` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 1,
  `system_reserve` int(11) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `locale`, `flag`, `app_locale`, `is_rtl`, `status`, `system_reserve`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'English', 'en', 'US.png', 'en_EN', 0, 1, 1, 1, '2026-05-23 05:31:31', '2026-05-23 07:22:55', NULL),
(2, 'Arabic', 'ar', 'AF.png', 'ar_SA', 1, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 06:08:35', '2026-05-23 06:08:35'),
(3, 'German', 'de', 'BE.png', 'de_DE', 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 06:08:43', '2026-05-23 06:08:43'),
(4, 'French', 'fr', 'CS.png', 'fr_FR', 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 06:13:29', '2026-05-23 06:13:29'),
(5, 'URDU', 'ur', 'PK.png', 'ur_PK', 0, 1, 0, 1, '2026-05-23 06:14:17', '2026-05-23 07:22:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `location` longtext DEFAULT NULL,
  `location_coordinates` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`location_coordinates`)),
  `type` varchar(255) DEFAULT NULL,
  `rider_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_id` varchar(255) DEFAULT NULL,
  `model_type` varchar(255) DEFAULT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) DEFAULT 'public',
  `conversions_disk` varchar(255) DEFAULT 'public',
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_id`, `model_type`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`, `alternative_text`) VALUES
(1, NULL, NULL, '5e7ba45a-c3c2-4fb3-bb19-edeb9205d483', NULL, NULL, NULL, NULL, 'public', 'public', NULL, NULL, NULL, NULL, NULL, 1, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(2, '1', 'App\\Models\\Attachment', '98a4f69b-b720-45dc-a876-0fd1ce731221', 'attachment', 'light', 'light.svg', 'image/svg+xml', 'public', 'public', 4196, '[]', '[]', '[]', '[]', 1, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL, NULL),
(3, '1', 'App\\Models\\Attachment', '0b718231-0e9c-40fd-8a79-39e47ada23cf', 'attachment', 'dark', 'dark.svg', 'image/svg+xml', 'public', 'public', 4192, '[]', '[]', '[]', '[]', 2, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL, NULL),
(4, '1', 'App\\Models\\Attachment', '3019781d-e4c2-4f9d-b696-63a5216278f7', 'attachment', 'favicon', 'favicon.svg', 'image/svg+xml', 'public', 'public', 5720, '[]', '[]', '[]', '[]', 3, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL, NULL),
(5, NULL, NULL, '70bed513-d282-4d7e-bb8a-57c318fd3c2a', NULL, NULL, NULL, NULL, 'public', 'public', NULL, NULL, NULL, NULL, NULL, 1, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL),
(6, '5', 'App\\Models\\Attachment', 'bba69017-e766-4cb7-a29a-3ae1306d1ea7', 'attachment', 'cab', 'cab.png', 'image/png', 'public', 'public', 5973, '[]', '[]', '[]', '[]', 1, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(7, '5', 'App\\Models\\Attachment', 'bb91b684-0f87-466f-88ae-4fb6f185a850', 'attachment', 'ambulance', 'ambulance.png', 'image/png', 'public', 'public', 9113, '[]', '[]', '[]', '[]', 2, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(8, '5', 'App\\Models\\Attachment', '4de02ff9-540a-45bb-94c8-3328911a5568', 'attachment', 'cab-icon', 'cab-icon.svg', 'image/svg+xml', 'public', 'public', 693, '[]', '[]', '[]', '[]', 3, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(9, '5', 'App\\Models\\Attachment', 'd718acf5-51e9-4914-8f2a-246bdeab31a3', 'attachment', 'parcel-icon', 'parcel-icon.svg', 'image/svg+xml', 'public', 'public', 631, '[]', '[]', '[]', '[]', 4, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(10, '5', 'App\\Models\\Attachment', '10fdfada-6429-452b-b389-a5b1f390d2e1', 'attachment', 'freight-icon', 'freight-icon.svg', 'image/svg+xml', 'public', 'public', 936, '[]', '[]', '[]', '[]', 5, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(11, '5', 'App\\Models\\Attachment', 'aa3ba093-0bc2-40c2-b5ac-1c2db42626e5', 'attachment', 'outstation-banner', 'outstation-banner.png', 'image/png', 'public', 'public', 14128, '[]', '[]', '[]', '[]', 6, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(12, '5', 'App\\Models\\Attachment', '8db0ce6e-29fd-4a02-aef2-20d665a7913f', 'attachment', 'package', 'package.png', 'image/png', 'public', 'public', 4422, '[]', '[]', '[]', '[]', 7, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(13, '5', 'App\\Models\\Attachment', '85aaebfe-60d2-4c30-b12b-9844337d5d7e', 'attachment', 'parcel', 'parcel.png', 'image/png', 'public', 'public', 8090, '[]', '[]', '[]', '[]', 8, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(14, '5', 'App\\Models\\Attachment', 'ee2e4756-e35d-4601-98d0-9cf3df3272fe', 'attachment', 'freight', 'freight.png', 'image/png', 'public', 'public', 10551, '[]', '[]', '[]', '[]', 9, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(15, '5', 'App\\Models\\Attachment', '7f59fd0a-8ecd-40f9-8616-d28e301f27b2', 'attachment', 'parcel', 'parcel.svg', 'image/svg+xml', 'public', 'public', 2005962, '[]', '[]', '[]', '[]', 10, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(16, '5', 'App\\Models\\Attachment', '6df28dcd-568e-420b-adcb-c937822678fa', 'attachment', 'splash', 'splash.png', 'image/png', 'public', 'public', 42829, '[]', '[]', '[]', '[]', 11, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(17, '5', 'App\\Models\\Attachment', '076b0d4e-a06c-4301-8809-b584f0325ea7', 'attachment', 'splash_driver', 'splash_driver.png', 'image/png', 'public', 'public', 40680, '[]', '[]', '[]', '[]', 12, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(18, '5', 'App\\Models\\Attachment', 'a2135b4e-20e5-4385-9456-f769bb63e90f', 'attachment', 'intercity-cab', 'intercity-cab.png', 'image/png', 'public', 'public', 11098, '[]', '[]', '[]', '[]', 13, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(19, '5', 'App\\Models\\Attachment', 'e0e194be-4d11-4135-8b7f-1d2d326f87a0', 'attachment', 'intercity-freight', 'intercity-freight.png', 'image/png', 'public', 'public', 15894, '[]', '[]', '[]', '[]', 14, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(20, '5', 'App\\Models\\Attachment', 'ea47ca14-9733-41f3-a736-0e61f9de0d14', 'attachment', 'intercity-parcel', 'intercity-parcel.png', 'image/png', 'public', 'public', 13379, '[]', '[]', '[]', '[]', 15, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(21, '5', 'App\\Models\\Attachment', 'aaca26b7-94ac-44cf-bb22-ec438ae9abe7', 'attachment', 'package-cab', 'package-cab.png', 'image/png', 'public', 'public', 12607, '[]', '[]', '[]', '[]', 16, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(22, '5', 'App\\Models\\Attachment', '74541466-0859-45a5-9bee-56f059efd17a', 'attachment', 'rental-cab', 'rental-cab.png', 'image/png', 'public', 'public', 14077, '[]', '[]', '[]', '[]', 17, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(23, '5', 'App\\Models\\Attachment', '476748d7-929e-4fc7-945e-8d61c814b293', 'attachment', 'ride-cab', 'ride-cab.png', 'image/png', 'public', 'public', 13417, '[]', '[]', '[]', '[]', 18, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(24, '5', 'App\\Models\\Attachment', '5e5183ad-6439-472a-b920-ff96bac792ff', 'attachment', 'ride-freight', 'ride-freight.png', 'image/png', 'public', 'public', 12885, '[]', '[]', '[]', '[]', 19, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(25, '5', 'App\\Models\\Attachment', '588669f0-3426-40e0-82ff-990c82a9b279', 'attachment', 'ride-parcel', 'ride-parcel.png', 'image/png', 'public', 'public', 8905, '[]', '[]', '[]', '[]', 20, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(26, '5', 'App\\Models\\Attachment', '4018fbbd-5b67-4647-b361-6e4aeddb59f6', 'attachment', 'schedule-cab', 'schedule-cab.png', 'image/png', 'public', 'public', 11822, '[]', '[]', '[]', '[]', 21, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(27, '5', 'App\\Models\\Attachment', '83eef4c9-b8ea-497a-a7ab-06c7a01cea6e', 'attachment', 'schedule-freight', 'schedule-freight.png', 'image/png', 'public', 'public', 10023, '[]', '[]', '[]', '[]', 22, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(28, '5', 'App\\Models\\Attachment', 'ba6919c7-4c68-4c01-b74b-0ea2dbf2f81c', 'attachment', 'schedule-parcel', 'schedule-parcel.png', 'image/png', 'public', 'public', 8024, '[]', '[]', '[]', '[]', 23, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(29, '5', 'App\\Models\\Attachment', '0ec39620-8fa8-4ee0-9fee-e5eb5e669fbd', 'attachment', 'ambulance-1', 'ambulance-1.png', 'image/png', 'public', 'public', 1324929, '[]', '[]', '[]', '[]', 24, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL, NULL),
(30, NULL, NULL, 'd6b7843d-36f0-4909-94cb-aa1d65f1d0a4', NULL, NULL, NULL, NULL, 'public', 'public', NULL, NULL, NULL, NULL, NULL, 1, 1, '2026-05-23 06:18:04', '2026-05-23 06:18:04', '2026-05-23 06:18:04', NULL),
(31, '30', 'App\\Models\\Attachment', '8b034fe1-0660-49e1-9544-8a2e91f922f3', 'file', 'adaptive-icon', 'adaptive-icon.jpeg', 'image/jpeg', 'public', 'public', 39759, '[]', '[]', '[]', '[]', 1, 1, '2026-05-23 06:18:04', '2026-05-23 06:18:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `system_reserve` int(11) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `system_reserve`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 1, 1, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `params` longtext DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `module` bigint(20) UNSIGNED DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `class` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `badge` int(11) DEFAULT 0,
  `badgeable` tinyint(1) DEFAULT 0,
  `badge_callback` longtext DEFAULT NULL,
  `menu` bigint(20) UNSIGNED NOT NULL,
  `depth` int(11) DEFAULT 0,
  `quick_link` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 1,
  `role_id` int(11) DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `label`, `route`, `params`, `slug`, `permission`, `parent`, `module`, `section`, `sort`, `class`, `icon`, `badge`, `badgeable`, `badge_callback`, `menu`, `depth`, `quick_link`, `status`, `role_id`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sidebar.dashboard', 'admin.dashboard.index', NULL, 'sidebardashboard', '', 0, NULL, 'sidebar.home', 0, NULL, 'ri-dashboard-line', 0, 0, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(2, 'sidebar.users', 'admin.user.index', NULL, 'sidebarusers', 'user.index', 0, NULL, 'sidebar.user_management', 1, NULL, 'ri-group-line', 0, 0, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(3, 'sidebar.all_users', 'admin.user.index', NULL, 'sidebarall-users', 'user.index', 2, NULL, 'sidebar.user_management', 2, NULL, 'ri-user-3-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(4, 'sidebar.add_user', 'admin.user.create', NULL, 'sidebaradd-user', 'user.create', 2, NULL, 'sidebar.user_management', 3, NULL, 'ri-user-add-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(5, 'sidebar.role_permissions', 'admin.role.index', NULL, 'sidebarrole-permissions', 'role.index', 2, NULL, 'sidebar.user_management', 4, NULL, 'ri-lock-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(6, 'sidebar.media', 'admin.media.index', NULL, 'sidebarmedia', 'attachment.index', 0, NULL, 'sidebar.home', 5, NULL, 'ri-folder-open-line', 0, 0, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(7, 'sidebar.blogs', 'admin.blog.index', NULL, 'sidebarblogs', 'blog.index', 0, NULL, 'sidebar.content_management', 6, NULL, 'ri-pushpin-line', 0, 0, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(8, 'sidebar.all_blogs', 'admin.blog.index', NULL, 'sidebarall-blogs', 'blog.index', 7, NULL, 'sidebar.content_management', 7, NULL, 'ri-bookmark-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(9, 'sidebar.add_blogs', 'admin.blog.create', NULL, 'sidebaradd-blogs', 'blog.create', 7, NULL, 'sidebar.content_management', 8, NULL, 'ri-add-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(10, 'sidebar.categories', 'admin.category.index', NULL, 'sidebarcategories', 'category.index', 7, NULL, 'sidebar.content_management', 9, NULL, 'ri-folder-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(11, 'sidebar.tags', 'admin.tag.index', NULL, 'sidebartags', 'tag.index', 7, NULL, 'sidebar.content_management', 10, NULL, 'ri-price-tag-3-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(12, 'sidebar.pages', 'admin.page.index', NULL, 'sidebarpages', 'page.index', 0, NULL, 'sidebar.content_management', 11, NULL, 'ri-pages-line', 0, 0, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(13, 'sidebar.all_pages', 'admin.page.index', NULL, 'sidebarall-pages', 'page.index', 12, NULL, 'sidebar.content_management', 12, NULL, 'ri-list-check', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(14, 'sidebar.add_page', 'admin.page.create', NULL, 'sidebaradd-page', 'page.create', 12, NULL, 'sidebar.content_management', 13, NULL, 'ri-add-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(15, 'sidebar.notify_templates', 'admin.email-template.index', NULL, 'sidebarnotify-templates', 'email_template.index', 0, NULL, 'sidebar.promotion_management', 14, NULL, 'ri-pushpin-line', 0, 0, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(16, 'sidebar.email_templates', 'admin.email-template.index', NULL, 'sidebaremail-templates', 'email_template.index', 15, NULL, 'sidebar.promotion_management', 15, NULL, 'ri-dashboard-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(17, 'sidebar.sms_templates', 'admin.sms-template.index', NULL, 'sidebarsms-templates', 'sms_template.index', 15, NULL, 'sidebar.promotion_management', 16, NULL, 'ri-dashboard-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(18, 'sidebar.push_notification_templates', 'admin.push-notification-template.index', NULL, 'sidebarpush-notification-templates', 'push_notification_template.index', 15, NULL, 'sidebar.promotion_management', 17, NULL, 'ri-dashboard-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(19, 'sidebar.testimonials', 'admin.testimonial.index', NULL, 'sidebartestimonials', 'testimonial.index', 0, NULL, 'sidebar.promotion_management', 18, NULL, 'ri-group-line', 0, 0, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(20, 'sidebar.all_testimonials', 'admin.testimonial.index', NULL, 'sidebarall-testimonials', 'testimonial.index', 19, NULL, 'sidebar.promotion_management', 19, NULL, 'ri-list-check', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(21, 'sidebar.add_testimonial', 'admin.testimonial.create', NULL, 'sidebaradd-testimonial', 'testimonial.create', 19, NULL, 'sidebar.promotion_management', 20, NULL, 'ri-add-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(22, 'sidebar.faqs', 'admin.faq.index', NULL, 'sidebarfaqs', 'faq.index', 0, NULL, 'sidebar.content_management', 21, NULL, 'ri-questionnaire-line', 0, 0, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(23, 'sidebar.general_settings', 'admin.setting.index', NULL, 'sidebargeneral-settings', 'setting.index', 0, NULL, 'sidebar.setting_management', 22, NULL, 'ri-settings-5-line', 0, 0, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(24, 'sidebar.languages', 'admin.language.index', NULL, 'sidebarlanguages', 'language.index', 23, NULL, 'sidebar.setting_management', 23, NULL, 'ri-translate-2', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(25, 'sidebar.taxes', 'admin.tax.index', NULL, 'sidebartaxes', 'tax.index', 23, NULL, 'sidebar.financial_management', 24, NULL, 'ri-percent-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(26, 'sidebar.currencies', 'admin.currency.index', NULL, 'sidebarcurrencies', 'currency.index', 23, NULL, 'sidebar.financial_management', 25, NULL, 'ri-currency-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(27, 'sidebar.plugins', 'admin.plugin.index', NULL, 'sidebarplugins', 'plugin.index', 23, NULL, 'sidebar.setting_management', 26, NULL, 'ri-plug-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(28, 'sidebar.payment_methods', 'admin.payment-method.index', NULL, 'sidebarpayment-methods', 'payment-method.index', 23, NULL, 'sidebar.setting_management', 27, NULL, 'ri-secure-payment-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(29, 'sidebar.sms_gateways', 'admin.sms-gateway.index', NULL, 'sidebarsms-gateways', 'sms-gateway.index', 23, NULL, 'sidebar.setting_management', 28, NULL, 'ri-message-2-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(30, 'sidebar.about_system', 'admin.about-system.index', NULL, 'sidebarabout-system', 'about-system.index', 23, NULL, 'sidebar.setting_management', 29, NULL, 'ri-apps-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(31, 'sidebar.settings', 'admin.setting.index', NULL, 'sidebarsettings', 'setting.index', 23, NULL, 'sidebar.setting_management', 30, NULL, 'ri-settings-5-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(32, 'sidebar.appearance', 'admin.robot.index', NULL, 'sidebarappearance', 'appearance.index', 0, NULL, 'sidebar.setting_management', 31, NULL, 'ri-swap-3-line', 0, 0, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(33, 'sidebar.robots', 'admin.robot.index', NULL, 'sidebarrobots', 'appearance.index', 32, NULL, 'sidebar.setting_management', 32, NULL, '', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(34, 'sidebar.landing_page', 'admin.landing-page.index', NULL, 'sidebarlanding-page', 'landing_page.index', 32, NULL, 'sidebar.setting_management', 33, NULL, 'ri-pages-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(35, 'sidebar.subscribers', 'admin.subscribes', NULL, 'sidebarsubscribers', 'landing_page.index', 32, NULL, 'sidebar.setting_management', 34, NULL, 'ri-pages-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(36, 'sidebar.customizations', 'admin.customization.index', NULL, 'sidebarcustomizations', 'appearance.index', 32, NULL, 'sidebar.setting_management', 35, NULL, 'ri-pages-line', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(37, 'sidebar.system_tools', 'admin.backup.index', NULL, 'sidebarsystem-tools', 'system-tool.index', 0, NULL, 'sidebar.setting_management', 36, NULL, 'ri-shield-user-line', 0, 0, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(38, 'sidebar.backup', 'admin.backup.index', NULL, 'sidebarbackup', 'system-tool.index', 37, NULL, 'sidebar.setting_management', 37, NULL, '', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(39, 'sidebar.activity_logs', 'admin.activity-logs.index', NULL, 'sidebaractivity-logs', 'system-tool.index', 37, NULL, 'sidebar.setting_management', 38, NULL, '', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(40, 'sidebar.database_cleanup', 'admin.cleanup-db.index', NULL, 'sidebardatabase-cleanup', 'system-tool.index', 37, NULL, 'sidebar.setting_management', 39, NULL, '', 0, 0, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(41, 'sidebar.menus', 'admin.menu.index', NULL, 'sidebarmenus', 'menu.index', 0, NULL, 'sidebar.setting_management', 40, NULL, 'ri-menu-2-line', 0, 0, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL),
(42, 'taxido::sidebar.riders', NULL, NULL, 'tx_riders', 'rider.index', 0, 13, 'sidebar.user_management', 3, NULL, 'ri-group-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(43, 'taxido::sidebar.all_riders', 'admin.rider.index', NULL, 'tx_all_riders', 'rider.index', 42, 13, 'sidebar.user_management', 41, NULL, 'ri-team-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(44, 'taxido::sidebar.add_rider', 'admin.rider.create', NULL, 'tx_rider_create', 'rider.create', 42, 13, 'sidebar.user_management', 42, NULL, 'ri-user-add-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(45, 'taxido::sidebar.wallet', 'admin.rider-wallet.index', NULL, 'tx_rider_wallet', 'rider_wallet.index', 42, 13, 'sidebar.user_management', 43, NULL, 'ri-wallet-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(46, 'taxido::sidebar.drivers', NULL, NULL, 'tx_drivers', 'driver.index', 0, 13, 'sidebar.user_management', 4, NULL, 'ri-user-2-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(47, 'taxido::sidebar.verified_drivers', 'admin.driver.index', NULL, 'tx_all_drivers', 'driver.index', 46, 13, 'sidebar.user_management', 44, NULL, 'ri-check-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(48, 'taxido::sidebar.unverified_drivers', 'admin.driver.unverified-drivers', NULL, 'tx_unverified_drivers', 'unverified_driver.index', 46, 13, 'sidebar.user_management', 45, NULL, 'ri-alert-line', 0, 1, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(49, 'taxido::sidebar.add_driver', 'admin.driver.create', NULL, 'tx_driver_add', 'driver.create', 46, 13, 'sidebar.user_management', 46, NULL, 'ri-add-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(50, 'taxido::sidebar.driver_documents', 'admin.driver-document.index', NULL, 'tx_driverDocument', 'driver_document.index', 46, 13, 'sidebar.user_management', 47, NULL, 'ri-document-line', 0, 1, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(51, 'taxido::sidebar.driver_rules', 'admin.driver-rule.index', NULL, 'tx_driverRule', 'driver_rule.index', 46, 13, 'sidebar.user_management', 48, NULL, 'ri-gavel-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(52, 'taxido::sidebar.driver_location', 'admin.driver-location.index', NULL, 'tx_locations', 'driver_location.index', 46, 13, 'sidebar.user_management', 49, NULL, 'ri-road-map-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(53, 'taxido::sidebar.notice', 'admin.notice.index', NULL, 'tx_notice', 'notice.index', 46, 13, 'sidebar.user_management', 50, NULL, 'ri-notice-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(54, 'taxido::sidebar.wallet', 'admin.driver-wallet.index', NULL, 'tx_driver_wallet', 'driver_wallet.index', 46, 13, 'sidebar.user_management', 51, NULL, 'ri-wallet-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(55, 'taxido::sidebar.withdraw_requests', 'admin.withdraw-request.index', NULL, 'tx_withdrawRequest', 'withdraw_request.index', 46, 13, 'sidebar.user_management', 52, NULL, 'ri-money-dollar-circle-line', 0, 1, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(56, 'taxido::sidebar.commission_histories', 'admin.cab-commission-history.index', NULL, 'tx_commissionHistory', 'cab_commission_history.index', 46, 13, 'sidebar.user_management', 53, NULL, 'ri-money-dollar-circle-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(57, 'taxido::sidebar.dispatchers', NULL, NULL, 'tx_dispatcher', 'rider.index', 0, 13, 'sidebar.user_management', 5, NULL, 'ri-group-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(58, 'taxido::sidebar.all_dispatchers', 'admin.dispatcher.index', NULL, 'tx_all_dispatchers', 'dispatcher.index', 57, 13, 'sidebar.user_management', 54, NULL, 'ri-team-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(59, 'taxido::sidebar.add_dispatcher', 'admin.dispatcher.create', NULL, 'tx_dispatcher_create', 'dispatcher.create', 57, 13, 'sidebar.user_management', 55, NULL, 'ri-user-add-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(60, 'taxido::sidebar.fleet_managers', NULL, NULL, 'tx_fleet_manager', 'fleet_manager.index', 0, 13, 'sidebar.user_management', 6, NULL, 'ri-truck-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(61, 'taxido::sidebar.verified_fleet_managers', 'admin.fleet-manager.index', NULL, 'tx_all_fleet_managers', 'fleet_manager.index', 60, 13, 'sidebar.user_management', 6, NULL, 'ri-check-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(62, 'taxido::sidebar.unverified_fleet_managers', 'admin.fleet-manager.unverified.index', NULL, 'tx_unverified_fleet_manager', 'fleet_manager.index', 60, 13, 'sidebar.user_management', 6, NULL, 'ri-alert-line', 0, 1, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(63, 'taxido::sidebar.add_fleet_manager', 'admin.fleet-manager.create', NULL, 'tx_fleet_manager_create', 'fleet_manager.create', 60, 13, 'sidebar.user_management', 7, NULL, 'ri-user-add-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(64, 'taxido::sidebar.fleet_documents', 'admin.fleet-document.index', NULL, 'tx_fleetDocument', 'fleet_document.index', 60, 13, 'sidebar.user_management', 56, NULL, 'ri-document-line', 0, 1, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(65, 'taxido::sidebar.fleet_vehicles', NULL, NULL, 'tx_fleet_vehicles', 'vehicle_info.index', 0, 13, 'sidebar.user_management', 7, NULL, 'ri-car-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(66, 'taxido::sidebar.verified_fleet_vehicles', 'admin.vehicle-info.verified', NULL, 'tx_verified_fleet_vehicles', 'vehicle_info.index', 65, 13, 'sidebar.user_management', 57, NULL, 'ri-check-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(67, 'taxido::sidebar.unverified_fleet_vehicles', 'admin.vehicle-info.unverified', NULL, 'tx_unverified_fleet_vehicles', 'vehicle_info.index', 65, 13, 'sidebar.user_management', 58, NULL, 'ri-alert-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(68, 'taxido::sidebar.fleet_vehicle_documents', 'admin.vehicleInfoDoc.index', NULL, 'tx_vehicleInfoDoc', 'fleet_vehicle_document.index', 60, 13, 'sidebar.user_management', 8, NULL, 'ri-document-line', 0, 1, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(69, 'taxido::sidebar.wallet', 'admin.fleet-wallet.index', NULL, 'tx_fleet_manager_wallet', 'fleet_wallet.index', 60, 13, 'sidebar.user_management', 59, NULL, 'ri-wallet-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(70, 'taxido::sidebar.withdraw_requests', 'admin.fleet-withdraw-request.index', NULL, 'tx_fleet_withdrawRequest', 'fleet_withdraw_request.index', 60, 13, 'sidebar.user_management', 60, NULL, 'ri-money-dollar-circle-line', 0, 1, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(71, 'taxido::sidebar.referrals', 'admin.referral.index', NULL, 'tx_referral_bonus', 'cab_referral.index', 0, 13, 'sidebar.user_management', 9, NULL, 'ri-user-shared-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(72, 'taxido::sidebar.zones', NULL, NULL, 'zones', 'zone.index', 0, 13, 'taxido::sidebar.cab_management', 6, NULL, 'ri-route-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(73, 'taxido::sidebar.zones', 'admin.zone.index', NULL, 'tx_zones', 'zone.index', 72, 13, 'taxido::sidebar.cab_management', 61, NULL, 'ri-map-2-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(74, 'taxido::sidebar.add_zone', 'admin.zone.create', NULL, 'tx_zones_create', 'zone.create', 72, 13, 'taxido::sidebar.cab_management', 62, NULL, 'ri-map-2-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(75, 'taxido::sidebar.peak_zones', NULL, NULL, 'tx_peakZones', 'peak_zone.index', 0, 13, 'taxido::sidebar.cab_management', 7, NULL, 'ri-shape-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(76, 'taxido::sidebar.peak_zones', 'admin.peakZone.index', NULL, 'tx_peakZones_list', 'peak_zone.index', 75, 13, 'taxido::sidebar.cab_management', 8, NULL, 'ri-fire-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(77, 'taxido::sidebar.peak_zone_map', 'admin.peakZoneMap.index', NULL, 'tx_peakzone_map', 'peak_zone.index', 75, 13, 'taxido::sidebar.cab_management', 9, NULL, 'ri-map-pin-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(78, 'taxido::sidebar.services', 'admin.service.index', NULL, 'tx_service', 'service.index', 0, 13, 'taxido::sidebar.cab_management', 7, NULL, 'ri-pin-distance-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(79, 'taxido::sidebar.cab', NULL, NULL, 'tx_service_cab', 'service.index', 0, 13, 'sidebar.home', 8, NULL, 'ri-roadster-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(80, 'taxido::sidebar.service_categories', 'admin.service-category.cab.index', NULL, 'tx_service_categories_cab', 'service.index', 79, 13, 'sidebar.home', 8, NULL, 'ri-taxi-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(81, 'taxido::sidebar.vehicles', 'admin.vehicle-type.cab.index', NULL, 'tx_service_categories_vehicle_cab', 'service.index', 79, 13, 'sidebar.home', 8, NULL, 'ri-taxi-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(82, 'taxido::sidebar.freight', NULL, NULL, 'tx_service_freight', 'service.index', 0, 13, 'sidebar.home', 9, NULL, 'ri-truck-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(83, 'taxido::sidebar.service_categories', 'admin.service-category.freight.index', NULL, 'tx_service_categories_freight', 'service.index', 82, 13, 'sidebar.home', 8, NULL, 'ri-taxi-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(84, 'taxido::sidebar.vehicles', 'admin.vehicle-type.freight.index', NULL, 'tx_service_categories_vehicle_freight', 'service.index', 82, 13, 'sidebar.home', 8, NULL, 'ri-taxi-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(85, 'taxido::sidebar.parcel', NULL, NULL, 'tx_service_parcel', 'service.index', 0, 13, 'sidebar.home', 9, NULL, 'ri-archive-2-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(86, 'taxido::sidebar.service_categories', 'admin.service-category.parcel.index', NULL, 'tx_service_categories_parcel', 'service.index', 85, 13, 'sidebar.home', 8, NULL, 'ri-taxi-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(87, 'taxido::sidebar.vehicles', 'admin.vehicle-type.parcel.index', NULL, 'tx_service_categories_vehicle_parcel', 'service.index', 85, 13, 'sidebar.home', 8, NULL, 'ri-taxi-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(88, 'taxido::sidebar.heat_map', 'admin.heat-map', NULL, 'tx_heatmap', 'heat_map.index', 0, 13, 'taxido::sidebar.cab_management', 9, NULL, 'ri-fire-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(89, 'taxido::sidebar.preferences', 'admin.preference.index', NULL, 'tx_preference_index', 'preference.index', 0, 13, 'taxido::sidebar.cab_management', 9, NULL, 'ri-equalizer-2-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:48', '2026-05-24 12:03:52', NULL),
(90, 'taxido::sidebar.vehicles', NULL, NULL, 'taxido', 'rental_vehicle.index', 0, 13, 'taxido::sidebar.cab_management', 10, NULL, 'ri-taxi-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(91, 'taxido::sidebar.rental_vehicles', 'admin.rental-vehicle.index', NULL, 'tx_rental_vehicle', 'rental_vehicle.index', 90, 13, 'taxido::sidebar.cab_management', 63, NULL, 'ri-clock-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(92, 'taxido::sidebar.ambulances', 'admin.ambulance.index', NULL, 'tx_ambulance', 'ambulance.index', 90, 13, 'taxido::sidebar.cab_management', 64, NULL, 'ri-ambulance-fill', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(93, 'taxido::sidebar.hourly_packages', 'admin.hourly-package.index', NULL, 'tx_hourlyPackage', 'hourly_package.index', 90, 13, 'taxido::sidebar.cab_management', 65, NULL, 'ri-clock-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(94, 'taxido::sidebar.documents', 'admin.document.index', NULL, 'tx_documents', 'document.index', 90, 13, 'taxido::sidebar.cab_management', 66, NULL, 'ri-file-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(95, 'taxido::sidebar.cancellation_reasons', 'admin.cancellation-reason.index', NULL, 'tx_cancellationReason', 'cancellation_reason.index', 90, 13, 'taxido::sidebar.cab_management', 67, NULL, 'ri-error-warning-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(96, 'taxido::sidebar.sos', NULL, NULL, 'tx_sos', 'sos.index', 0, 13, 'taxido::sidebar.cab_management', 11, NULL, 'ri-alarm-warning-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(97, 'taxido::sidebar.sos', 'admin.sos.index', NULL, 'tx_soses', 'sos.index', 96, 13, 'taxido::sidebar.cab_management', 68, NULL, 'ri-alert-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(98, 'taxido::sidebar.sos_alerts', 'admin.sos-alerts.index', NULL, 'tx_sos_alerts', 'sos_alert.index', 96, 13, 'taxido::sidebar.cab_management', 69, NULL, 'ri-list-check', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(99, 'taxido::sidebar.subscriptions', NULL, NULL, 'tx_subscription', 'plan.index', 0, 13, 'taxido::sidebar.price_management', 12, NULL, 'ri-vip-crown-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(100, 'taxido::sidebar.driver_subscription', 'admin.driver-subscription.index', NULL, 'tx_driverSubscription', 'subscription.index', 99, 13, 'taxido::sidebar.price_management', 70, NULL, 'ri-file-blank-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(101, 'taxido::sidebar.plans', 'admin.plan.index', NULL, 'tx_plans', 'plan.index', 99, 13, 'taxido::sidebar.price_management', 71, NULL, 'ri-gavel-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(102, 'taxido::sidebar.coupons', 'admin.coupon.index', NULL, 'tx_coupons', 'coupon.index', 0, 13, 'taxido::sidebar.price_management', 13, NULL, 'ri-coupon-2-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(103, 'taxido::sidebar.extra_charges', 'admin.extra-charge.index', NULL, 'tx_extraCharges', 'extra_charge-2.index', 0, 13, 'taxido::sidebar.price_management', 13, NULL, 'ri-money-dollar-circle-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(104, 'taxido::sidebar.surge_prices', 'admin.surge-price.index', NULL, 'tx_surge_price', 'surge_price.index', 0, 13, 'taxido::sidebar.price_management', 14, NULL, 'ri-price-tag-3-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(105, 'taxido::sidebar.airports', 'admin.airport.index', NULL, 'tx_airport', 'airport.index', 0, 13, 'taxido::sidebar.cab_management', 15, NULL, 'ri-plane-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(106, 'taxido::sidebar.reports', NULL, NULL, 'tx_reports', 'report.index', 0, 13, 'taxido::sidebar.cab_management', 16, NULL, 'ri-folder-chart-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(107, 'taxido::sidebar.transaction_reports', 'admin.transaction-report.index', NULL, 'tx_transaction_reports', 'report.index', 106, 13, 'taxido::sidebar.cab_management', 72, NULL, 'ri-road-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(108, 'taxido::sidebar.ride_reports', 'admin.ride-report.index', NULL, 'tx_ride_reports', 'report.index', 106, 13, 'taxido::sidebar.cab_management', 73, NULL, 'ri-traffic-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(109, 'taxido::sidebar.driver_reports', 'admin.driver-report.index', NULL, 'tx_driver_reports', 'report.index', 106, 13, 'taxido::sidebar.cab_management', 74, NULL, 'ri-user-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(110, 'taxido::sidebar.coupon_reports', 'admin.coupon-report.index', NULL, 'tx_coupon_reports', 'report.index', 106, 13, 'taxido::sidebar.cab_management', 75, NULL, 'ri-road-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(111, 'taxido::sidebar.zone_reports', 'admin.zone-report.index', NULL, 'tx_zone_reports', 'report.index', 106, 13, 'taxido::sidebar.cab_management', 76, NULL, 'ri-bar-chart-2-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(112, 'taxido::sidebar.incentive_reports', 'admin.incentive-report.index', NULL, 'tx_incentive_reports', 'report.index', 106, 13, 'taxido::sidebar.cab_management', 77, NULL, 'ri-bar-chart-2-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(113, 'taxido::sidebar.reviews', NULL, NULL, 'tx_reviews', 'driver_review.index', 0, 13, 'taxido::sidebar.cab_management', 17, NULL, 'ri-user-star-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(114, 'taxido::sidebar.rider_reviews', 'admin.rider-review.index', NULL, 'tx_rider_review', 'rider.create', 113, 13, 'taxido::sidebar.cab_management', 78, NULL, 'ri-star-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(115, 'taxido::sidebar.driver_reviews', 'admin.driver-review.index', NULL, 'tx_driver_review', 'driver_review.index', 113, 13, 'taxido::sidebar.cab_management', 79, NULL, 'ri-star-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(116, 'taxido::sidebar.app_settings', 'admin.taxido-setting.index', NULL, 'tx_setting', 'taxido_setting.index', 0, 13, 'taxido::sidebar.cab_management', 18, NULL, 'ri-settings-4-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(117, 'taxido::sidebar.rides', NULL, NULL, 'tx_ride', 'ride.index', 0, 13, 'sidebar.home', 10, NULL, 'ri-map-2-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(118, 'taxido::sidebar.ride_requests', 'admin.ride-request.index', NULL, 'tx_all_ride_requests', 'ride_request.index', 117, 13, 'sidebar.home', 80, NULL, 'ri-traffic-light-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(119, 'taxido::sidebar.all_rides', 'admin.ride.index', NULL, 'tx_all_rides', 'ride.index', 117, 13, 'sidebar.home', 81, NULL, 'ri-traffic-light-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(120, 'taxido::sidebar.scheduled_rides', 'admin.ride.status.filter', '{\"status\":\"scheduled\"}', 'tx_scheduled_rides', 'ride.index', 117, 13, 'sidebar.home', 82, NULL, 'ri-traffic-light-line', 0, 1, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(121, 'taxido::sidebar.accepted_rides', 'admin.ride.status.filter', '{\"status\":\"accepted\"}', 'tx_accepted_rides', 'ride.index', 117, 13, 'sidebar.home', 83, NULL, 'ri-traffic-light-line', 0, 1, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(122, 'taxido::sidebar.arrived_rides', 'admin.ride.status.filter', '{\"status\":\"arrived\"}', 'tx_arrived_rides', 'ride.index', 117, 13, 'sidebar.home', 84, NULL, 'ri-traffic-light-line', 0, 1, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(123, 'taxido::sidebar.started_rides', 'admin.ride.status.filter', '{\"status\":\"started\"}', 'tx_started_rides', 'ride.index', 117, 13, 'sidebar.home', 85, NULL, 'ri-traffic-light-line', 0, 1, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(124, 'taxido::sidebar.cancelled_rides', 'admin.ride.status.filter', '{\"status\":\"cancelled\"}', 'tx_cancelled_rides', 'ride.index', 117, 13, 'sidebar.home', 86, NULL, 'ri-traffic-light-line', 0, 1, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(125, 'taxido::sidebar.completed_rides', 'admin.ride.status.filter', '{\"status\":\"completed\"}', 'tx_completed_rides', 'ride.index', 117, 13, 'sidebar.home', 87, NULL, 'ri-traffic-light-line', 0, 1, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(126, 'taxido::sidebar.banners', 'admin.banner.index', NULL, 'tx_banners', 'banner.index', 0, 13, 'sidebar.promotion_management', 88, NULL, 'ri-todo-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(127, 'taxido::sidebar.onboardings', 'admin.onboarding.index', NULL, 'tx_onboardings', 'onboarding.index', 0, 13, 'sidebar.promotion_management', 89, NULL, 'ri-guide-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(128, 'taxido::sidebar.push_notification', NULL, NULL, 'tx_pushNotification', 'push_notification.index', 0, 13, 'sidebar.promotion_management', 19, NULL, 'ri-send-plane-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(129, 'taxido::sidebar.all_push_notifications', 'admin.push-notification.index', NULL, 'tx_all_pushNotification', 'push_notification.index', 128, 13, 'sidebar.promotion_management', 90, NULL, 'ri-notification-2-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(130, 'taxido::sidebar.send_push_notification', 'admin.push-notification.create', NULL, 'tx_send_pushNotification', 'push_notification.create', 128, 13, 'sidebar.promotion_management', 91, NULL, 'ri-send-plane-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(131, 'taxido::sidebar.chats', 'admin.chat.index', NULL, 'tx_chat', 'chat.index', 0, 13, 'sidebar.home', 4, NULL, 'ri-chat-1-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(132, 'ticket::sidebar.support_ticket', NULL, NULL, 'ticket', 'ticket.ticket.index', 0, 14, 'ticket::sidebar.section', 20, NULL, 'ri-user-voice-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(133, 'ticket::sidebar.dashboard', 'admin.ticket.dashboard', NULL, 'tc_ticket_dashboard', 'ticket.ticket.index', 132, 14, 'ticket::sidebar.section', 21, NULL, 'ri-group-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(134, 'ticket::sidebar.all_tickets', 'admin.ticket.index', NULL, 'tc_ticket', 'ticket.ticket.index', 132, 14, 'ticket::sidebar.section', 92, NULL, 'ri-group-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(135, 'ticket::sidebar.all_executives', 'admin.executive.index', NULL, 'tc_all_executives', 'ticket.executive.index', 132, 14, 'ticket::sidebar.section', 93, NULL, 'ri-team-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(136, 'ticket::sidebar.status', 'admin.status.index', NULL, 'tc_status', 'ticket.status.index', 132, 14, 'ticket::sidebar.section', 94, NULL, 'ri-group-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(137, 'ticket::sidebar.priority', 'admin.priority.index', NULL, 'tc_priority', 'ticket.priority.index', 132, 14, 'ticket::sidebar.section', 95, NULL, 'ri-group-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(138, 'ticket::sidebar.knowledge_base', NULL, NULL, 'tc_knowledge', 'ticket.knowledge.index', 0, 14, 'ticket::sidebar.section', 22, NULL, 'ri-git-repository-line', 0, NULL, NULL, 1, 0, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(139, 'ticket::sidebar.all_knowledge_base', 'admin.knowledge.index', NULL, 'tc_all_knowledge', 'ticket.knowledge.index', 138, 14, 'ticket::sidebar.section', 96, NULL, 'ri-team-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(140, 'ticket::sidebar.add_knowledge', 'admin.knowledge.create', NULL, 'tc_knowledge_create', 'ticket.knowledge.create', 138, 14, 'ticket::sidebar.section', 97, NULL, 'ri-id-card-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(141, 'ticket::sidebar.categories', 'admin.ticket.category.index', NULL, 'tc_category', 'ticket.category.index', 138, 14, 'ticket::sidebar.section', 98, NULL, 'ri-id-card-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(142, 'ticket::sidebar.tags', 'admin.ticket.tag.index', NULL, 'tc_tag', 'ticket.tag.index', 138, 14, 'ticket::sidebar.section', 99, NULL, 'ri-id-card-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(143, 'ticket::sidebar.departments', 'admin.department.index', NULL, 'tc_department', 'ticket.department.index', 132, 14, 'ticket::sidebar.section', 100, NULL, 'ri-group-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(144, 'ticket::sidebar.form_fields', 'admin.formfield.index', NULL, 'tc_formfield', 'ticket.formfield.index', 132, 14, 'ticket::sidebar.section', 101, NULL, 'ri-group-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL),
(145, 'ticket::sidebar.settings', 'admin.ticket.setting.index', NULL, 'tc_setting', 'ticket.setting.index', 132, 14, 'ticket::sidebar.section', 102, NULL, 'ri-group-line', 0, NULL, NULL, 1, 1, 0, 1, 0, 1, '2026-05-23 05:31:49', '2026-05-24 12:03:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reply_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) NOT NULL,
  `message` longtext DEFAULT NULL,
  `message_id` longtext DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2017_08_11_073824_create_menus_wp_table', 1),
(6, '2017_08_11_074006_create_menu_items_wp_table', 1),
(7, '2021_11_25_094447_create_countries_table', 1),
(8, '2022_05_30_090203_create_media_table', 1),
(9, '2022_09_28_105314_create_categories_table', 1),
(10, '2022_10_01_135505_create_tags_table', 1),
(11, '2023_04_20_044705_create_notifications_table', 1),
(12, '2023_05_30_112559_create_modules_table', 1),
(13, '2023_10_07_060301_create_blogs_table', 1),
(14, '2023_11_15_131828_create_pages_table', 1),
(15, '2023_12_05_062849_create_payment_gateways_table', 1),
(16, '2024_04_20_061325_create_plugins_table', 1),
(17, '2024_05_01_042107_create_auth_tokens_table', 1),
(18, '2024_05_23_082318_create_personal_access_tokens_table', 1),
(19, '2024_05_25_081827_create_permission_tables', 1),
(20, '2024_07_09_095953_create_taxes_table', 1),
(21, '2024_07_09_104520_create_currencies_table', 1),
(22, '2024_07_12_043614_create_languages_table', 1),
(23, '2024_07_12_044309_add_columns_users_table', 1),
(24, '2024_07_12_044309_create_settings_table', 1),
(25, '2024_07_12_044309_create_taxido_settings_table', 1),
(26, '2024_07_18_084646_create_banners_table', 1),
(27, '2024_07_18_084724_create_documents_table', 1),
(28, '2024_07_18_084754_create_services_table', 1),
(29, '2024_07_18_084755_create_vehicle_types_table', 1),
(30, '2024_07_18_084756_create_airports_table', 1),
(31, '2024_07_19_082823_create_priorities_table', 1),
(32, '2024_07_19_090319_create_zones_table', 1),
(33, '2024_07_19_090419_create_addresses_table', 1),
(34, '2024_07_19_130334_create_faqs_table', 1),
(35, '2024_07_22_070950_create_driver_rules_table', 1),
(36, '2024_07_22_090803_create_form_fields_table', 1),
(37, '2024_07_22_124552_create_payment_accounts_table', 1),
(38, '2024_07_24_083029_create_message_table', 1),
(39, '2024_07_24_101439_create_wallets_table', 1),
(40, '2024_07_24_103346_create_driver_documents_table', 1),
(41, '2024_07_25_052049_create_ticket_settings_table', 1),
(42, '2024_08_01_061513_create_statuses_table', 1),
(43, '2024_08_02_115838_create_hourly_packages_table', 1),
(44, '2024_08_02_130158_create_coupons_table', 1),
(45, '2024_08_12_045713_create_departments_table', 1),
(46, '2024_08_12_115839_create_service_categories_table', 1),
(47, '2024_08_13_052445_create_tickets_table', 1),
(48, '2024_08_29_102551_create_withdraw_requests_table', 1),
(49, '2024_08_31_033317_add_alternative_text_to_media_table', 1),
(50, '2024_08_31_052446_create_reports_table', 1),
(51, '2024_09_03_070923_create_push_notifications_table', 1),
(52, '2024_09_03_072944_create_ratings_table', 1),
(53, '2024_09_06_122033_create_knowledge_base_categories_table', 1),
(54, '2024_09_06_123438_create_landing_pages_table', 1),
(55, '2024_09_07_094637_create_knowledge_base_tags_table', 1),
(56, '2024_09_09_094216_create_knowledge_bases_table', 1),
(57, '2024_09_09_115527_create_cancellation_reasons_table', 1),
(58, '2024_10_01_124515_create_rental_vehicles', 1),
(59, '2024_10_02_115839_create_preferences_table', 1),
(60, '2024_10_02_115840_create_rides_table', 1),
(61, '2024_10_07_120923_create_rider_reviews_table', 1),
(62, '2024_10_07_121023_create_driver_reviews_table', 1),
(63, '2024_10_08_070424_create_sos_table', 1),
(64, '2024_10_12_083722_create_email_templates', 1),
(65, '2024_10_14_111617_create_sms_templates', 1),
(66, '2024_10_15_041531_create_push_notification_templates', 1),
(67, '2024_11_22_062049_create_notices_table', 1),
(68, '2024_11_25_035910_create_testimonials_table', 1),
(69, '2024_11_27_054315_create_backup_logs', 1),
(70, '2024_11_28_120846_create_activity_log_table', 1),
(71, '2024_11_28_120847_add_event_column_to_activity_log_table', 1),
(72, '2024_11_28_120848_add_batch_uuid_column_to_activity_log_table', 1),
(73, '2024_12_16_035102_create_customizations_table', 1),
(74, '2024_12_22_060359_create_cab_commission_histories_table', 1),
(75, '2025_01_03_092822_create_plans_table', 1),
(76, '2025_01_20_133742_2023_10_07_060301_create_subscribes_table', 1),
(77, '2025_03_12_052604_create_onboardings_table', 1),
(78, '2025_06_20_084145_create_surge_prices_table', 1),
(79, '2025_07_01_115854_create_extra_charges_table', 1),
(80, '2025_10_14_121741_add_enhanced_referral_columns_to_cab_referral_bonuses_table copy', 1),
(81, '2025_10_14_121741_create_incentive_table', 1),
(82, '2025_10_14_160636_update_wallet_history_referral_descriptions', 1),
(83, '2025_10_16_140011_create_incentive_levels_table', 1),
(84, '2025_10_16_140024_create_driver_incentive_progress_table', 1),
(85, '2025_10_16_140037_remove_single_incentive_fields_from_vehicle_type_zones_table', 1),
(86, '2025_10_16_140139_add_incentive_level_id_to_incentives_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 14),
(4, 'App\\Models\\User', 15),
(4, 'App\\Models\\User', 16),
(5, 'App\\Models\\User', 5),
(6, 'App\\Models\\User', 6),
(7, 'App\\Models\\User', 17);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `actions` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `actions`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'attachments', '{\"index\":\"attachment.index\",\"create\":\"attachment.create\",\"edit\":\"attachment.edit\",\"trash\":\"attachment.destroy\",\"restore\":\"attachment.restore\",\"delete\":\"attachment.forceDelete\"}', '2026-05-23 05:31:24', '2026-05-23 05:31:24', NULL),
(2, 'users', '{\"index\":\"user.index\",\"create\":\"user.create\",\"edit\":\"user.edit\",\"trash\":\"user.destroy\",\"restore\":\"user.restore\",\"delete\":\"user.forceDelete\"}', '2026-05-23 05:31:24', '2026-05-23 05:31:24', NULL),
(3, 'roles', '{\"index\":\"role.index\",\"create\":\"role.create\",\"edit\":\"role.edit\",\"delete\":\"role.destroy\"}', '2026-05-23 05:31:24', '2026-05-23 05:31:24', NULL),
(4, 'categories', '{\"index\":\"category.index\",\"create\":\"category.create\",\"edit\":\"category.edit\",\"delete\":\"category.destroy\"}', '2026-05-23 05:31:24', '2026-05-23 05:31:24', NULL),
(5, 'tags', '{\"index\":\"tag.index\",\"create\":\"tag.create\",\"edit\":\"tag.edit\",\"trash\":\"tag.destroy\",\"restore\":\"tag.restore\",\"delete\":\"tag.forceDelete\"}', '2026-05-23 05:31:25', '2026-05-23 05:31:25', NULL),
(6, 'blogs', '{\"index\":\"blog.index\",\"create\":\"blog.create\",\"edit\":\"blog.edit\",\"trash\":\"blog.destroy\",\"restore\":\"blog.restore\",\"delete\":\"blog.forceDelete\"}', '2026-05-23 05:31:25', '2026-05-23 05:31:25', NULL),
(7, 'pages', '{\"index\":\"page.index\",\"create\":\"page.create\",\"edit\":\"page.edit\",\"trash\":\"page.destroy\",\"restore\":\"page.restore\",\"delete\":\"page.forceDelete\"}', '2026-05-23 05:31:25', '2026-05-23 05:31:25', NULL),
(8, 'testimonials', '{\"index\":\"testimonial.index\",\"create\":\"testimonial.create\",\"edit\":\"testimonial.edit\",\"trash\":\"testimonial.destroy\",\"restore\":\"testimonial.restore\",\"delete\":\"testimonial.forceDelete\"}', '2026-05-23 05:31:25', '2026-05-23 05:31:25', NULL),
(9, 'taxes', '{\"index\":\"tax.index\",\"create\":\"tax.create\",\"edit\":\"tax.edit\",\"trash\":\"tax.destroy\",\"restore\":\"tax.restore\",\"delete\":\"tax.forceDelete\"}', '2026-05-23 05:31:26', '2026-05-23 05:31:26', NULL),
(10, 'currencies', '{\"index\":\"currency.index\",\"create\":\"currency.create\",\"edit\":\"currency.edit\",\"trash\":\"currency.destroy\",\"restore\":\"currency.restore\",\"delete\":\"currency.forceDelete\"}', '2026-05-23 05:31:26', '2026-05-23 05:31:26', NULL),
(11, 'languages', '{\"index\":\"language.index\",\"create\":\"language.create\",\"edit\":\"language.edit\",\"trash\":\"language.destroy\",\"restore\":\"language.restore\",\"delete\":\"language.forceDelete\"}', '2026-05-23 05:31:26', '2026-05-23 05:31:26', NULL),
(12, 'settings', '{\"index\":\"setting.index\",\"edit\":\"setting.edit\"}', '2026-05-23 05:31:26', '2026-05-23 05:31:26', NULL),
(13, 'system-tools', '{\"index\":\"system-tool.index\",\"create\":\"system-tool.create\",\"edit\":\"system-tool.edit\",\"trash\":\"system-tool.destroy\",\"restore\":\"system-tool.restore\",\"delete\":\"system-tool.forceDelete\"}', '2026-05-23 05:31:27', '2026-05-23 05:31:27', NULL),
(14, 'plugins', '{\"index\":\"plugin.index\",\"create\":\"plugin.create\",\"edit\":\"plugin.edit\",\"trash\":\"plugin.destroy\",\"restore\":\"plugin.restore\",\"delete\":\"plugin.forceDelete\"}', '2026-05-23 05:31:27', '2026-05-23 05:31:27', NULL),
(15, 'about-system', '{\"index\":\"about-system.index\"}', '2026-05-23 05:31:27', '2026-05-23 05:31:27', NULL),
(16, 'payment-methods', '{\"index\":\"payment-method.index\",\"edit\":\"payment-method.edit\"}', '2026-05-23 05:31:27', '2026-05-23 05:31:27', NULL),
(17, 'sms-gateways', '{\"index\":\"sms-gateway.index\",\"edit\":\"sms-gateway.edit\"}', '2026-05-23 05:31:27', '2026-05-23 05:31:27', NULL),
(18, 'sms_templates', '{\"index\":\"sms_template.index\",\"create\":\"sms_template.create\",\"edit\":\"sms_template.edit\",\"trash\":\"sms_template.destroy\",\"delete\":\"sms_template.forceDelete\"}', '2026-05-23 05:31:27', '2026-05-23 05:31:27', NULL),
(19, 'email_templates', '{\"index\":\"email_template.index\",\"create\":\"email_template.create\",\"trash\":\"email_template.destroy\",\"edit\":\"email_template.edit\",\"delete\":\"email_template.forceDelete\"}', '2026-05-23 05:31:28', '2026-05-23 05:31:28', NULL),
(20, 'push_notification_templates', '{\"index\":\"push_notification_template.index\",\"create\":\"push_notification_template.create\",\"trash\":\"push_notification_template.destroy\",\"edit\":\"push_notification_template.edit\",\"delete\":\"push_notification_template.forceDelete\"}', '2026-05-23 05:31:28', '2026-05-23 05:31:28', NULL),
(21, 'landing_page', '{\"index\":\"landing_page.index\",\"edit\":\"landing_page.edit\"}', '2026-05-23 05:31:28', '2026-05-23 05:31:28', NULL),
(22, 'appearance', '{\"index\":\"appearance.index\",\"edit\":\"appearance.edit\",\"create\":\"appearance.create\"}', '2026-05-23 05:31:28', '2026-05-23 05:31:28', NULL),
(23, 'backups', '{\"index\":\"backup.index\",\"create\":\"backup.create\",\"edit\":\"backup.edit\",\"trash\":\"backup.destroy\",\"restore\":\"backup.restore\",\"delete\":\"backup.forceDelete\"}', '2026-05-23 05:31:28', '2026-05-23 05:31:28', NULL),
(24, 'riders', '{\"index\":\"rider.index\",\"create\":\"rider.create\",\"edit\":\"rider.edit\",\"trash\":\"rider.destroy\",\"restore\":\"rider.restore\",\"delete\":\"rider.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(25, 'drivers', '{\"index\":\"driver.index\",\"create\":\"driver.create\",\"edit\":\"driver.edit\",\"trash\":\"driver.destroy\",\"restore\":\"driver.restore\",\"delete\":\"driver.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(26, 'dispatchers', '{\"index\":\"dispatcher.index\",\"create\":\"dispatcher.create\",\"edit\":\"dispatcher.edit\",\"trash\":\"dispatcher.destroy\",\"restore\":\"dispatcher.restore\",\"delete\":\"dispatcher.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(27, 'unverified_drivers', '{\"index\":\"unverified_driver.index\",\"create\":\"unverified_driver.create\",\"edit\":\"unverified_driver.edit\",\"trash\":\"unverified_driver.destroy\",\"restore\":\"unverified_driver.restore\",\"delete\":\"unverified_driver.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(28, 'banners', '{\"index\":\"banner.index\",\"create\":\"banner.create\",\"edit\":\"banner.edit\",\"trash\":\"banner.destroy\",\"restore\":\"banner.restore\",\"delete\":\"banner.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(29, 'documents', '{\"index\":\"document.index\",\"create\":\"document.create\",\"edit\":\"document.edit\",\"trash\":\"document.destroy\",\"restore\":\"document.restore\",\"delete\":\"document.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(30, 'vehicle_types', '{\"index\":\"vehicle_type.index\",\"create\":\"vehicle_type.create\",\"edit\":\"vehicle_type.edit\",\"trash\":\"vehicle_type.destroy\",\"restore\":\"vehicle_type.restore\",\"delete\":\"vehicle_type.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(31, 'coupons', '{\"index\":\"coupon.index\",\"create\":\"coupon.create\",\"edit\":\"coupon.edit\",\"trash\":\"coupon.destroy\",\"restore\":\"coupon.restore\",\"delete\":\"coupon.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(32, 'zones', '{\"index\":\"zone.index\",\"create\":\"zone.create\",\"edit\":\"zone.edit\",\"trash\":\"zone.destroy\",\"restore\":\"zone.restore\",\"delete\":\"zone.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(33, 'faqs', '{\"index\":\"faq.index\",\"create\":\"faq.create\",\"edit\":\"faq.edit\",\"trash\":\"faq.destroy\",\"restore\":\"faq.restore\",\"delete\":\"faq.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(34, 'heatmaps', '{\"index\":\"heat_map.index\",\"create\":\"heat_map.create\",\"edit\":\"heat_map.edit\",\"trash\":\"heat_map.destroy\",\"restore\":\"heat_map.restore\",\"delete\":\"heat_map.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(35, 'soses', '{\"index\":\"sos.index\",\"create\":\"sos.create\",\"edit\":\"sos.edit\",\"trash\":\"sos.destroy\",\"restore\":\"sos.restore\",\"delete\":\"sos.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(36, 'driver_documents', '{\"index\":\"driver_document.index\",\"create\":\"driver_document.create\",\"edit\":\"driver_document.edit\",\"trash\":\"driver_document.destroy\",\"restore\":\"driver_document.restore\",\"delete\":\"driver_document.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(37, 'driver_rules', '{\"index\":\"driver_rule.index\",\"create\":\"driver_rule.create\",\"edit\":\"driver_rule.edit\",\"trash\":\"driver_rule.destroy\",\"restore\":\"driver_rule.restore\",\"delete\":\"driver_rule.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(38, 'extra_charges', '{\"index\":\"extra_charge.index\",\"create\":\"extra_charge.create\",\"edit\":\"extra_charge.edit\",\"trash\":\"extra_charge.destroy\",\"restore\":\"extra_charge.restore\",\"delete\":\"extra_charge.forceDelete\"}', '2026-05-23 05:31:32', '2026-05-23 05:31:32', NULL),
(39, 'cab_commission_histories', '{\"index\":\"cab_commission_history.index\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(40, 'notices', '{\"index\":\"notice.index\",\"create\":\"notice.create\",\"edit\":\"notice.edit\",\"trash\":\"notice.destroy\",\"restore\":\"notice.restore\",\"delete\":\"notice.forceDelete\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(41, 'driver_wallets', '{\"index\":\"driver_wallet.index\",\"credit\":\"driver_wallet.credit\",\"debit\":\"driver_wallet.debit\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(42, 'services', '{\"index\":\"service.index\",\"edit\":\"service.edit\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(43, 'onboardings', '{\"index\":\"onboarding.index\",\"edit\":\"onboarding.edit\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(44, 'service_categories', '{\"index\":\"service_category.index\",\"edit\":\"service_category.edit\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(45, 'taxido_settings', '{\"index\":\"taxido_setting.index\",\"edit\":\"taxido_setting.edit\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(46, 'ride_request', '{\"index\":\"ride_request.index\",\"create\":\"ride_request.create\",\"edit\":\"ride_request.edit\",\"trash\":\"ride_request.destroy\",\"restore\":\"ride_request.restore\",\"delete\":\"ride_request.forceDelete\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(47, 'rides', '{\"index\":\"ride.index\",\"create\":\"ride.create\",\"edit\":\"ride.edit\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(48, 'plans', '{\"index\":\"plan.index\",\"create\":\"plan.create\",\"edit\":\"plan.edit\",\"trash\":\"plan.destroy\",\"restore\":\"plan.restore\",\"delete\":\"plan.forceDelete\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(49, 'airports', '{\"index\":\"airport.index\",\"create\":\"airport.create\",\"edit\":\"airport.edit\",\"trash\":\"airport.destroy\",\"restore\":\"airport.restore\",\"delete\":\"airport.forceDelete\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(50, 'surge_prices', '{\"index\":\"surge_price.index\",\"create\":\"surge_price.create\",\"edit\":\"surge_price.edit\",\"trash\":\"surge_price.destroy\",\"restore\":\"surge_price.restore\",\"delete\":\"surge_price.forceDelete\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(51, 'subscriptions', '{\"index\":\"subscription.index\",\"create\":\"subscription.create\",\"edit\":\"subscription.edit\",\"destroy\":\"subscription.destroy\",\"purchase\":\"subscription.purchase\",\"cancel\":\"subscription.cancel\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(52, 'bids', '{\"index\":\"bid.index\",\"create\":\"bid.create\",\"edit\":\"bid.edit\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(53, 'push_notifications', '{\"index\":\"push_notification.index\",\"create\":\"push_notification.create\",\"trash\":\"push_notification.destroy\",\"delete\":\"push_notification.forceDelete\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(54, 'rider_wallets', '{\"index\":\"rider_wallet.index\",\"credit\":\"rider_wallet.credit\",\"debit\":\"rider_wallet.debit\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(55, 'withdraw_requests', '{\"index\":\"withdraw_request.index\",\"create\":\"withdraw_request.create\",\"edit\":\"withdraw_request.edit\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(56, 'fleet_withdraw_requests', '{\"index\":\"fleet_withdraw_request.index\",\"create\":\"fleet_withdraw_request.create\",\"edit\":\"fleet_withdraw_request.edit\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(57, 'reports', '{\"index\":\"report.index\",\"create\":\"report.create\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(58, 'driver_locations', '{\"index\":\"driver_location.index\",\"create\":\"driver_location.create\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(59, 'cancellation_reasons', '{\"index\":\"cancellation_reason.index\",\"create\":\"cancellation_reason.create\",\"edit\":\"cancellation_reason.edit\",\"trash\":\"cancellation_reason.destroy\",\"restore\":\"cancellation_reason.restore\",\"delete\":\"cancellation_reason.forceDelete\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(60, 'driver_reviews', '{\"index\":\"driver_review.index\",\"create\":\"driver_review.create\",\"trash\":\"driver_review.destroy\",\"restore\":\"driver_review.restore\",\"delete\":\"driver_review.forceDelete\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(61, 'rider_reviews', '{\"index\":\"rider_review.index\",\"create\":\"rider_review.create\",\"trash\":\"rider_review.destroy\",\"restore\":\"rider_review.restore\",\"delete\":\"rider_review.forceDelete\"}', '2026-05-23 05:31:33', '2026-05-23 05:31:33', NULL),
(62, 'hourly_packages', '{\"index\":\"hourly_package.index\",\"create\":\"hourly_package.create\",\"edit\":\"hourly_package.edit\",\"trash\":\"hourly_package.destroy\",\"restore\":\"hourly_package.restore\",\"delete\":\"hourly_package.forceDelete\"}', '2026-05-23 05:31:34', '2026-05-23 05:31:34', NULL),
(63, 'sos_alerts', '{\"index\":\"sos_alert.index\",\"create\":\"sos_alert.create\",\"edit\":\"sos_alert.edit\",\"trash\":\"sos_alert.destroy\",\"restore\":\"sos_alert.restore\",\"delete\":\"sos_alert.forceDelete\"}', '2026-05-23 05:31:34', '2026-05-23 05:31:34', NULL),
(64, 'rental_vehicles', '{\"index\":\"rental_vehicle.index\",\"create\":\"rental_vehicle.create\",\"edit\":\"rental_vehicle.edit\",\"trash\":\"rental_vehicle.destroy\",\"restore\":\"rental_vehicle.restore\",\"delete\":\"rental_vehicle.forceDelete\"}', '2026-05-23 05:31:34', '2026-05-23 05:31:34', NULL),
(65, 'fleet_managers', '{\"index\":\"fleet_manager.index\",\"create\":\"fleet_manager.create\",\"edit\":\"fleet_manager.edit\",\"trash\":\"fleet_manager.destroy\",\"restore\":\"fleet_manager.restore\",\"delete\":\"fleet_manager.forceDelete\"}', '2026-05-23 05:31:34', '2026-05-23 05:31:34', NULL),
(66, 'fleet_wallets', '{\"index\":\"fleet_wallet.index\",\"credit\":\"fleet_wallet.credit\",\"debit\":\"fleet_wallet.debit\"}', '2026-05-23 05:31:34', '2026-05-23 05:31:34', NULL),
(67, 'chats', '{\"index\":\"chat.index\",\"send\":\"chat.send\",\"reply\":\"chat.replay\",\"delete\":\"chat.delete\"}', '2026-05-23 05:31:34', '2026-05-23 05:31:34', NULL),
(68, 'ambulances', '{\"index\":\"ambulance.index\"}', '2026-05-23 05:31:34', '2026-05-23 05:31:34', NULL),
(69, 'fleet_documents', '{\"index\":\"fleet_document.index\",\"create\":\"fleet_document.create\",\"edit\":\"fleet_document.edit\",\"trash\":\"fleet_document.destroy\",\"restore\":\"fleet_document.restore\",\"delete\":\"fleet_document.forceDelete\"}', '2026-05-23 05:31:34', '2026-05-23 05:31:34', NULL),
(70, 'fleet_vehicle_documents', '{\"index\":\"fleet_vehicle_document.index\",\"create\":\"fleet_vehicle_document.create\",\"edit\":\"fleet_vehicle_document.edit\",\"trash\":\"fleet_vehicle_document.destroy\",\"restore\":\"fleet_vehicle_document.restore\",\"delete\":\"fleet_vehicle_document.forceDelete\"}', '2026-05-23 05:31:34', '2026-05-23 05:31:34', NULL),
(71, 'vehicle_info', '{\"index\":\"vehicle_info.index\",\"create\":\"vehicle_info.create\",\"edit\":\"vehicle_info.edit\",\"trash\":\"vehicle_info.destroy\",\"restore\":\"vehicle_info.restore\",\"delete\":\"vehicle_info.forceDelete\"}', '2026-05-23 05:31:34', '2026-05-23 05:31:34', NULL),
(72, 'peak_zones', '{\"index\":\"peak_zone.index\",\"create\":\"peak_zone.create\",\"edit\":\"peak_zone.edit\",\"trash\":\"peak_zone.destroy\",\"restore\":\"peak_zone.restore\",\"delete\":\"peak_zone.forceDelete\"}', '2026-05-23 05:31:34', '2026-05-23 05:31:34', NULL),
(73, 'preferences', '{\"index\":\"preference.index\",\"create\":\"preference.create\",\"edit\":\"preference.edit\",\"trash\":\"preference.destroy\",\"restore\":\"preference.restore\",\"delete\":\"preference.forceDelete\"}', '2026-05-23 05:31:34', '2026-05-23 05:31:34', NULL),
(74, 'cab_referrals', '{\"index\":\"cab_referral.index\",\"create\":\"cab_referral.create\",\"edit\":\"cab_referral.edit\",\"trash\":\"cab_referral.destroy\",\"restore\":\"cab_referral.restore\",\"delete\":\"cab_referral.forceDelete\"}', '2026-05-23 05:31:34', '2026-05-23 05:31:34', NULL),
(75, 'tickets', '{\"index\":\"ticket.ticket.index\",\"create\":\"ticket.ticket.create\",\"reply\":\"ticket.ticket.reply\",\"trash\":\"ticket.ticket.destroy\",\"restore\":\"ticket.ticket.restore\",\"delete\":\"ticket.ticket.forceDelete\"}', '2026-05-23 05:31:50', '2026-05-23 05:31:50', NULL),
(76, 'priorities', '{\"index\":\"ticket.priority.index\",\"create\":\"ticket.priority.create\",\"edit\":\"ticket.priority.edit\",\"trash\":\"ticket.priority.destroy\",\"restore\":\"ticket.priority.restore\",\"delete\":\"ticket.priority.forceDelete\"}', '2026-05-23 05:31:50', '2026-05-23 05:31:50', NULL),
(77, 'executives', '{\"index\":\"ticket.executive.index\",\"create\":\"ticket.executive.create\",\"edit\":\"ticket.executive.edit\",\"trash\":\"ticket.executive.destroy\",\"restore\":\"ticket.executive.restore\",\"delete\":\"ticket.executive.forceDelete\"}', '2026-05-23 05:31:50', '2026-05-23 05:31:50', NULL),
(78, 'departments', '{\"index\":\"ticket.department.index\",\"create\":\"ticket.department.create\",\"edit\":\"ticket.department.edit\",\"show\":\"ticket.department.show\",\"trash\":\"ticket.department.destroy\",\"restore\":\"ticket.department.restore\",\"delete\":\"ticket.department.forceDelete\"}', '2026-05-23 05:31:50', '2026-05-23 05:31:50', NULL),
(79, 'formfields', '{\"index\":\"ticket.formfield.index\",\"create\":\"ticket.formfield.create\",\"edit\":\"ticket.formfield.edit\",\"trash\":\"ticket.formfield.destroy\",\"restore\":\"ticket.formfield.restore\",\"delete\":\"ticket.formfield.forceDelete\"}', '2026-05-23 05:31:50', '2026-05-23 05:31:50', NULL),
(80, 'statuses', '{\"index\":\"ticket.status.index\",\"create\":\"ticket.status.create\",\"edit\":\"ticket.status.edit\",\"trash\":\"ticket.status.destroy\",\"restore\":\"ticket.status.restore\",\"delete\":\"ticket.status.forceDelete\"}', '2026-05-23 05:31:50', '2026-05-23 05:31:50', NULL),
(81, 'knowledge', '{\"index\":\"ticket.knowledge.index\",\"create\":\"ticket.knowledge.create\",\"edit\":\"ticket.knowledge.edit\",\"trash\":\"ticket.knowledge.destroy\",\"restore\":\"ticket.knowledge.restore\",\"delete\":\"ticket.knowledge.forceDelete\"}', '2026-05-23 05:31:50', '2026-05-23 05:31:50', NULL),
(82, 'knowledge_categories', '{\"index\":\"ticket.category.index\",\"create\":\"ticket.category.create\",\"edit\":\"ticket.category.edit\",\"delete\":\"ticket.category.destroy\"}', '2026-05-23 05:31:50', '2026-05-23 05:31:50', NULL),
(83, 'knowledge_tags', '{\"index\":\"ticket.tag.index\",\"create\":\"ticket.tag.create\",\"edit\":\"ticket.tag.edit\",\"trash\":\"ticket.tag.destroy\",\"restore\":\"ticket.tag.restore\",\"delete\":\"ticket.tag.forceDelete\"}', '2026-05-23 05:31:51', '2026-05-23 05:31:51', NULL),
(84, 'ticket_settings', '{\"index\":\"ticket.setting.index\",\"create\":\"ticket.setting.create\",\"edit\":\"ticket.setting.edit\",\"trash\":\"ticket.setting.destroy\",\"restore\":\"ticket.setting.restore\",\"delete\":\"ticket.setting.forceDelete\"}', '2026-05-23 05:31:51', '2026-05-23 05:31:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `send_to` enum('all','particular') DEFAULT 'all',
  `status` int(11) DEFAULT 1,
  `color` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_drivers`
--

CREATE TABLE `notice_drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(255) DEFAULT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onboardings`
--

CREATE TABLE `onboardings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` enum('rider','driver') DEFAULT 'rider',
  `description` longtext DEFAULT NULL,
  `onboarding_image_id` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `onboardings`
--

INSERT INTO `onboardings` (`id`, `title`, `type`, `description`, `onboarding_image_id`, `status`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"Accept A Job\"}', 'driver', '{\"en\":\"Easily browse and accept job requests in just one tap. Stay in control of your schedule and start earning instantly.\"}', '{\"en\":null}', 1, NULL, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(2, '{\"en\":\"Earn Money\"}', 'driver', '{\"en\":\"Complete rides or deliveries and earn money seamlessly. Get paid quickly and enjoy financial freedom on your terms.\"}', '{\"en\":null}', 1, NULL, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(3, '{\"en\":\"Enable Your Location\"}', 'driver', '{\"en\":\"Turn on your location services to receive nearby job requests and provide better service to customers in real-time\"}', '{\"en\":null}', 1, NULL, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(4, '{\"en\":\"Choose Your Destination\"}', 'rider', '{\"en\":\"Select your preferred route or destination before starting your ride. Plan your trips for a smooth and hassle-free journey.\"}', '{\"en\":null}', 1, NULL, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(5, '{\"en\":\"Enjoy Your Trip\"}', 'rider', '{\"en\":\"Sit back and enjoy a comfortable ride with our seamless service. Travel with ease and reach your destination worry-free.\"}', '{\"en\":null}', 1, NULL, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(6, '{\"en\":\"Check Fare & Book Ride\"}', 'rider', '{\"en\":\"Get an estimated fare before confirming your ride. Compare options and book your trip with confidence.\"}', '{\"en\":null}', 1, NULL, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `page_meta_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_accounts`
--

CREATE TABLE `payment_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paypal_email` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_holder_name` varchar(255) DEFAULT NULL,
  `bank_account_no` varchar(255) DEFAULT NULL,
  `swift` varchar(255) DEFAULT NULL,
  `routing_number` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `default` enum('bank','paypal') DEFAULT 'bank',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `mode` enum('live','sandbox') NOT NULL DEFAULT 'sandbox',
  `configs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`configs`)),
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways_transactions`
--

CREATE TABLE `payment_gateways_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `transaction_id` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `request_type` enum('web','api') DEFAULT 'api',
  `type` varchar(255) DEFAULT NULL,
  `redirect_url` longtext DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peak_zones`
--

CREATE TABLE `peak_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT 'Auto-generated Peak Zone',
  `polygon` geometry DEFAULT NULL,
  `locations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`locations`)),
  `is_active` int(11) NOT NULL DEFAULT 0,
  `starts_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `distance_price_percentage` double NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'attachment.index', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(2, 'attachment.create', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(3, 'attachment.edit', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(4, 'attachment.destroy', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(5, 'attachment.restore', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(6, 'attachment.forceDelete', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(7, 'user.index', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(8, 'user.create', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(9, 'user.edit', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(10, 'user.destroy', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(11, 'user.restore', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(12, 'user.forceDelete', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(13, 'role.index', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(14, 'role.create', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(15, 'role.edit', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(16, 'role.destroy', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(17, 'category.index', 'web', '2026-05-23 05:31:24', '2026-05-23 05:31:24'),
(18, 'category.create', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(19, 'category.edit', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(20, 'category.destroy', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(21, 'tag.index', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(22, 'tag.create', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(23, 'tag.edit', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(24, 'tag.destroy', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(25, 'tag.restore', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(26, 'tag.forceDelete', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(27, 'blog.index', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(28, 'blog.create', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(29, 'blog.edit', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(30, 'blog.destroy', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(31, 'blog.restore', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(32, 'blog.forceDelete', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(33, 'page.index', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(34, 'page.create', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(35, 'page.edit', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(36, 'page.destroy', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(37, 'page.restore', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(38, 'page.forceDelete', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(39, 'testimonial.index', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(40, 'testimonial.create', 'web', '2026-05-23 05:31:25', '2026-05-23 05:31:25'),
(41, 'testimonial.edit', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(42, 'testimonial.destroy', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(43, 'testimonial.restore', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(44, 'testimonial.forceDelete', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(45, 'tax.index', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(46, 'tax.create', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(47, 'tax.edit', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(48, 'tax.destroy', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(49, 'tax.restore', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(50, 'tax.forceDelete', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(51, 'currency.index', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(52, 'currency.create', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(53, 'currency.edit', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(54, 'currency.destroy', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(55, 'currency.restore', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(56, 'currency.forceDelete', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(57, 'language.index', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(58, 'language.create', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(59, 'language.edit', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(60, 'language.destroy', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(61, 'language.restore', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(62, 'language.forceDelete', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(63, 'setting.index', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(64, 'setting.edit', 'web', '2026-05-23 05:31:26', '2026-05-23 05:31:26'),
(65, 'system-tool.index', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(66, 'system-tool.create', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(67, 'system-tool.edit', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(68, 'system-tool.destroy', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(69, 'system-tool.restore', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(70, 'system-tool.forceDelete', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(71, 'plugin.index', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(72, 'plugin.create', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(73, 'plugin.edit', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(74, 'plugin.destroy', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(75, 'plugin.restore', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(76, 'plugin.forceDelete', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(77, 'about-system.index', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(78, 'payment-method.index', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(79, 'payment-method.edit', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(80, 'sms-gateway.index', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(81, 'sms-gateway.edit', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(82, 'sms_template.index', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(83, 'sms_template.create', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(84, 'sms_template.edit', 'web', '2026-05-23 05:31:27', '2026-05-23 05:31:27'),
(85, 'sms_template.destroy', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(86, 'sms_template.forceDelete', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(87, 'email_template.index', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(88, 'email_template.create', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(89, 'email_template.destroy', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(90, 'email_template.edit', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(91, 'email_template.forceDelete', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(92, 'push_notification_template.index', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(93, 'push_notification_template.create', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(94, 'push_notification_template.destroy', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(95, 'push_notification_template.edit', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(96, 'push_notification_template.forceDelete', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(97, 'landing_page.index', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(98, 'landing_page.edit', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(99, 'appearance.index', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(100, 'appearance.edit', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(101, 'appearance.create', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(102, 'backup.index', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(103, 'backup.create', 'web', '2026-05-23 05:31:28', '2026-05-23 05:31:28'),
(104, 'backup.edit', 'web', '2026-05-23 05:31:29', '2026-05-23 05:31:29'),
(105, 'backup.destroy', 'web', '2026-05-23 05:31:29', '2026-05-23 05:31:29'),
(106, 'backup.restore', 'web', '2026-05-23 05:31:29', '2026-05-23 05:31:29'),
(107, 'backup.forceDelete', 'web', '2026-05-23 05:31:29', '2026-05-23 05:31:29'),
(108, 'rider.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(109, 'rider.create', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(110, 'rider.edit', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(111, 'rider.destroy', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(112, 'rider.restore', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(113, 'rider.forceDelete', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(114, 'driver.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(115, 'driver.create', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(116, 'driver.edit', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(117, 'driver.destroy', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(118, 'driver.restore', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(119, 'driver.forceDelete', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(120, 'dispatcher.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(121, 'dispatcher.create', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(122, 'dispatcher.edit', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(123, 'dispatcher.destroy', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(124, 'dispatcher.restore', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(125, 'dispatcher.forceDelete', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(126, 'unverified_driver.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(127, 'unverified_driver.create', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(128, 'unverified_driver.edit', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(129, 'unverified_driver.destroy', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(130, 'unverified_driver.restore', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(131, 'unverified_driver.forceDelete', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(132, 'banner.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(133, 'banner.create', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(134, 'banner.edit', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(135, 'banner.destroy', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(136, 'banner.restore', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(137, 'banner.forceDelete', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(138, 'document.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(139, 'document.create', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(140, 'document.edit', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(141, 'document.destroy', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(142, 'document.restore', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(143, 'document.forceDelete', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(144, 'vehicle_type.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(145, 'vehicle_type.create', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(146, 'vehicle_type.edit', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(147, 'vehicle_type.destroy', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(148, 'vehicle_type.restore', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(149, 'vehicle_type.forceDelete', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(150, 'coupon.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(151, 'coupon.create', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(152, 'coupon.edit', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(153, 'coupon.destroy', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(154, 'coupon.restore', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(155, 'coupon.forceDelete', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(156, 'zone.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(157, 'zone.create', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(158, 'zone.edit', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(159, 'zone.destroy', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(160, 'zone.restore', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(161, 'zone.forceDelete', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(162, 'faq.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(163, 'faq.create', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(164, 'faq.edit', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(165, 'faq.destroy', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(166, 'faq.restore', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(167, 'faq.forceDelete', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(168, 'heat_map.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(169, 'heat_map.create', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(170, 'heat_map.edit', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(171, 'heat_map.destroy', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(172, 'heat_map.restore', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(173, 'heat_map.forceDelete', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(174, 'sos.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(175, 'sos.create', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(176, 'sos.edit', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(177, 'sos.destroy', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(178, 'sos.restore', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(179, 'sos.forceDelete', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(180, 'driver_document.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(181, 'driver_document.create', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(182, 'driver_document.edit', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(183, 'driver_document.destroy', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(184, 'driver_document.restore', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(185, 'driver_document.forceDelete', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(186, 'driver_rule.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(187, 'driver_rule.create', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(188, 'driver_rule.edit', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(189, 'driver_rule.destroy', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(190, 'driver_rule.restore', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(191, 'driver_rule.forceDelete', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(192, 'extra_charge.index', 'web', '2026-05-23 05:31:32', '2026-05-23 05:31:32'),
(193, 'extra_charge.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(194, 'extra_charge.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(195, 'extra_charge.destroy', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(196, 'extra_charge.restore', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(197, 'extra_charge.forceDelete', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(198, 'cab_commission_history.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(199, 'notice.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(200, 'notice.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(201, 'notice.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(202, 'notice.destroy', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(203, 'notice.restore', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(204, 'notice.forceDelete', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(205, 'driver_wallet.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(206, 'driver_wallet.credit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(207, 'driver_wallet.debit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(208, 'service.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(209, 'service.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(210, 'onboarding.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(211, 'onboarding.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(212, 'service_category.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(213, 'service_category.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(214, 'taxido_setting.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(215, 'taxido_setting.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(216, 'ride_request.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(217, 'ride_request.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(218, 'ride_request.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(219, 'ride_request.destroy', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(220, 'ride_request.restore', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(221, 'ride_request.forceDelete', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(222, 'ride.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(223, 'ride.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(224, 'ride.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(225, 'plan.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(226, 'plan.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(227, 'plan.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(228, 'plan.destroy', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(229, 'plan.restore', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(230, 'plan.forceDelete', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(231, 'airport.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(232, 'airport.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(233, 'airport.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(234, 'airport.destroy', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(235, 'airport.restore', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(236, 'airport.forceDelete', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(237, 'surge_price.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(238, 'surge_price.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(239, 'surge_price.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(240, 'surge_price.destroy', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(241, 'surge_price.restore', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(242, 'surge_price.forceDelete', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(243, 'subscription.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(244, 'subscription.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(245, 'subscription.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(246, 'subscription.destroy', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(247, 'subscription.purchase', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(248, 'subscription.cancel', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(249, 'bid.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(250, 'bid.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(251, 'bid.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(252, 'push_notification.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(253, 'push_notification.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(254, 'push_notification.destroy', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(255, 'push_notification.forceDelete', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(256, 'rider_wallet.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(257, 'rider_wallet.credit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(258, 'rider_wallet.debit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(259, 'withdraw_request.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(260, 'withdraw_request.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(261, 'withdraw_request.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(262, 'fleet_withdraw_request.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(263, 'fleet_withdraw_request.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(264, 'fleet_withdraw_request.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(265, 'report.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(266, 'report.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(267, 'driver_location.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(268, 'driver_location.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(269, 'cancellation_reason.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(270, 'cancellation_reason.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(271, 'cancellation_reason.edit', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(272, 'cancellation_reason.destroy', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(273, 'cancellation_reason.restore', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(274, 'cancellation_reason.forceDelete', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(275, 'driver_review.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(276, 'driver_review.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(277, 'driver_review.destroy', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(278, 'driver_review.restore', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(279, 'driver_review.forceDelete', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(280, 'rider_review.index', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(281, 'rider_review.create', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(282, 'rider_review.destroy', 'web', '2026-05-23 05:31:33', '2026-05-23 05:31:33'),
(283, 'rider_review.restore', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(284, 'rider_review.forceDelete', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(285, 'hourly_package.index', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(286, 'hourly_package.create', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(287, 'hourly_package.edit', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(288, 'hourly_package.destroy', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(289, 'hourly_package.restore', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(290, 'hourly_package.forceDelete', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(291, 'sos_alert.index', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(292, 'sos_alert.create', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(293, 'sos_alert.edit', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(294, 'sos_alert.destroy', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(295, 'sos_alert.restore', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(296, 'sos_alert.forceDelete', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(297, 'rental_vehicle.index', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(298, 'rental_vehicle.create', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(299, 'rental_vehicle.edit', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(300, 'rental_vehicle.destroy', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(301, 'rental_vehicle.restore', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(302, 'rental_vehicle.forceDelete', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(303, 'fleet_manager.index', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(304, 'fleet_manager.create', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(305, 'fleet_manager.edit', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(306, 'fleet_manager.destroy', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(307, 'fleet_manager.restore', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(308, 'fleet_manager.forceDelete', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(309, 'fleet_wallet.index', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(310, 'fleet_wallet.credit', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(311, 'fleet_wallet.debit', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(312, 'chat.index', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(313, 'chat.send', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(314, 'chat.replay', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(315, 'chat.delete', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(316, 'ambulance.index', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(317, 'fleet_document.index', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(318, 'fleet_document.create', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(319, 'fleet_document.edit', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(320, 'fleet_document.destroy', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(321, 'fleet_document.restore', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(322, 'fleet_document.forceDelete', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(323, 'fleet_vehicle_document.index', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(324, 'fleet_vehicle_document.create', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(325, 'fleet_vehicle_document.edit', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(326, 'fleet_vehicle_document.destroy', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(327, 'fleet_vehicle_document.restore', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(328, 'fleet_vehicle_document.forceDelete', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(329, 'vehicle_info.index', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(330, 'vehicle_info.create', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(331, 'vehicle_info.edit', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(332, 'vehicle_info.destroy', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(333, 'vehicle_info.restore', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(334, 'vehicle_info.forceDelete', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(335, 'peak_zone.index', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(336, 'peak_zone.create', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(337, 'peak_zone.edit', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(338, 'peak_zone.destroy', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(339, 'peak_zone.restore', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(340, 'peak_zone.forceDelete', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(341, 'preference.index', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(342, 'preference.create', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(343, 'preference.edit', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(344, 'preference.destroy', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(345, 'preference.restore', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(346, 'preference.forceDelete', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(347, 'cab_referral.index', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(348, 'cab_referral.create', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(349, 'cab_referral.edit', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(350, 'cab_referral.destroy', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(351, 'cab_referral.restore', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(352, 'cab_referral.forceDelete', 'web', '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(353, 'ticket.ticket.index', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(354, 'ticket.ticket.create', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(355, 'ticket.ticket.reply', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(356, 'ticket.ticket.destroy', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(357, 'ticket.ticket.restore', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(358, 'ticket.ticket.forceDelete', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(359, 'ticket.priority.index', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(360, 'ticket.priority.create', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(361, 'ticket.priority.edit', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(362, 'ticket.priority.destroy', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(363, 'ticket.priority.restore', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(364, 'ticket.priority.forceDelete', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(365, 'ticket.executive.index', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(366, 'ticket.executive.create', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(367, 'ticket.executive.edit', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(368, 'ticket.executive.destroy', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(369, 'ticket.executive.restore', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(370, 'ticket.executive.forceDelete', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(371, 'ticket.department.index', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(372, 'ticket.department.create', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(373, 'ticket.department.edit', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(374, 'ticket.department.show', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(375, 'ticket.department.destroy', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(376, 'ticket.department.restore', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(377, 'ticket.department.forceDelete', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(378, 'ticket.formfield.index', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(379, 'ticket.formfield.create', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(380, 'ticket.formfield.edit', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(381, 'ticket.formfield.destroy', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(382, 'ticket.formfield.restore', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(383, 'ticket.formfield.forceDelete', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(384, 'ticket.status.index', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(385, 'ticket.status.create', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(386, 'ticket.status.edit', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(387, 'ticket.status.destroy', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(388, 'ticket.status.restore', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(389, 'ticket.status.forceDelete', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(390, 'ticket.knowledge.index', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(391, 'ticket.knowledge.create', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(392, 'ticket.knowledge.edit', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(393, 'ticket.knowledge.destroy', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(394, 'ticket.knowledge.restore', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(395, 'ticket.knowledge.forceDelete', 'web', '2026-05-23 05:31:50', '2026-05-23 05:31:50'),
(396, 'ticket.category.index', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(397, 'ticket.category.create', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(398, 'ticket.category.edit', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(399, 'ticket.category.destroy', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(400, 'ticket.tag.index', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(401, 'ticket.tag.create', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(402, 'ticket.tag.edit', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(403, 'ticket.tag.destroy', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(404, 'ticket.tag.restore', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(405, 'ticket.tag.forceDelete', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(406, 'ticket.setting.index', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(407, 'ticket.setting.create', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(408, 'ticket.setting.edit', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(409, 'ticket.setting.destroy', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(410, 'ticket.setting.restore', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51'),
(411, 'ticket.setting.forceDelete', 'web', '2026-05-23 05:31:51', '2026-05-23 05:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role_type` varchar(255) DEFAULT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `duration` enum('daily','weekly','monthly','yearly') NOT NULL DEFAULT 'monthly',
  `description` longtext DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` int(11) DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan_service_categories`
--

CREATE TABLE `plan_service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `service_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `slug` longtext DEFAULT NULL,
  `thumbnail_url` longtext DEFAULT NULL,
  `version` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `name`, `description`, `status`, `slug`, `thumbnail_url`, `version`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'FlutterWave', 'Integrate Flutterwave to support payment processing across Africa with multiple currencies and methods.', 1, 'flutterwave', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(2, 'Instamojo', 'Instamojo is a payment platform that simplifies online payments for businesses and entrepreneurs.', 1, 'instamojo', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(3, 'Iyzico', 'Iyzico is a payment gateway providing secure online payment solutions for businesses in Turkey and beyond.', 1, 'iyzico', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(4, 'Midtrans', 'Midtrans is a payment gateway that provides businesses in Southeast Asia with reliable and secure online payment processing.', 1, 'midtrans', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(5, 'Mollie', 'Mollie is a payment gateway that enables businesses to accept online payments easily', 1, 'mollie', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(6, 'Msg91', 'MSG91 is a messaging platform for SMS, email, and voice communication services.', 1, 'msg91', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(7, 'Nexmo', 'Nexmo is a cloud communication platform for SMS, voice, and messaging services.', 1, 'nexmo', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(8, 'PayPal', 'PayPal is a secure online payment platform for global transactions and money transfers.', 1, 'paypal', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(9, 'Paystack', 'Paystack is an online payment solution that helps businesses accept and manage payments', 1, 'paystack', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(10, 'PhonePe', 'PhonePe is a digital payment platform for UPI-based transactions and mobile payments.', 1, 'phonepe', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(11, 'RazorPay', 'Razorpay is a payment gateway that simplifies online payments for businesses and customers.', 1, 'razorpay', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(12, 'Stripe', 'Stripe enables secure online payments, supporting cards, wallets, and global transactions.', 1, 'stripe', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(13, 'Taxido', 'A cab booking management platform enabling ride management for users and drivers.', 1, 'taxido', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(14, 'Ticket', 'Ticket Support for tracking and resolving user support requests.', 1, 'ticket', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(15, 'Twilio', 'Twilio is a cloud communications platform that enables businesses to integrate messaging, voice, and video capabilities into applications.', 1, 'twilio', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL),
(16, 'TwoFactor', 'TwoFactor is a security service that provides two-factor authentication for enhanced online account protection.', 1, 'twofactor', NULL, NULL, '2026-05-23 05:31:11', '2026-05-24 12:03:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `priorities`
--

CREATE TABLE `priorities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `color` varchar(255) NOT NULL,
  `response_in` varchar(255) NOT NULL,
  `response_value_in` varchar(255) NOT NULL,
  `resolve_in` int(11) NOT NULL,
  `resolve_value_in` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `system_reserve` int(11) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `priorities`
--

INSERT INTO `priorities` (`id`, `name`, `slug`, `color`, `response_in`, `response_value_in`, `resolve_in`, `resolve_value_in`, `status`, `system_reserve`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"High\"}', 'high', 'danger', '30', 'minute', 180, 'minute', 1, 1, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(2, '{\"en\":\"Medium\"}', 'medium', 'secondary', '2', 'hour', 3, 'hour', 1, 1, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(3, '{\"en\":\"Low\"}', 'low', 'primary', '1', 'week', 1, 'week', 1, 1, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(4, '{\"en\":\"Urgent\"}', 'urgent', 'danger', '15', 'minute', 60, 'minute', 1, 0, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(5, '{\"en\":\"Critical\"}', 'critical', 'danger', '10', 'minute', 30, 'minute', 1, 0, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(6, '{\"en\":\"High Priority\"}', 'high-priority', 'warning', '1', 'hour', 2, 'hour', 1, 0, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(7, '{\"en\":\"Medium Priority\"}', 'medium-priority', 'info', '3', 'hour', 6, 'hour', 1, 0, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `push_notifications`
--

CREATE TABLE `push_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `send_to` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notification_type` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `is_scheduled` int(11) DEFAULT 0,
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `push_notification_templates`
--

CREATE TABLE `push_notification_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rental_vehicles`
--

CREATE TABLE `rental_vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `vehicle_type_id` bigint(20) UNSIGNED NOT NULL,
  `normal_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `front_view_id` bigint(20) UNSIGNED DEFAULT NULL,
  `side_view_id` bigint(20) UNSIGNED DEFAULT NULL,
  `boot_view_id` bigint(20) UNSIGNED DEFAULT NULL,
  `interior_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `allow_with_driver` int(11) DEFAULT 1,
  `vehicle_subtype` varchar(255) DEFAULT NULL,
  `fuel_type` varchar(255) DEFAULT NULL,
  `gear_type` varchar(255) DEFAULT NULL,
  `vehicle_speed` varchar(255) DEFAULT NULL,
  `vehicle_per_day_price` double DEFAULT NULL,
  `driver_per_day_charge` double DEFAULT NULL,
  `commission_type` enum('fixed','percentage') DEFAULT 'fixed',
  `commission_rate` decimal(15,2) DEFAULT 0.00,
  `mileage` varchar(255) DEFAULT NULL,
  `interior` longtext DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` bigint(20) UNSIGNED DEFAULT 1,
  `is_ac` bigint(20) UNSIGNED DEFAULT 1,
  `bag_count` bigint(20) UNSIGNED DEFAULT 0,
  `verified_status` enum('pending','approved','rejected') DEFAULT 'pending',
  `registration_no` longtext DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `registration_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rental_vehicle_zones`
--

CREATE TABLE `rental_vehicle_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rental_vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rider_reviews`
--

CREATE TABLE `rider_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ride_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `rating` decimal(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rider_reviews`
--

INSERT INTO `rider_reviews` (`id`, `ride_id`, `rider_id`, `service_id`, `service_category_id`, `driver_id`, `message`, `rating`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 11, 2, 8, 4, 'Amazing journey! Highly professional driver.', 4.00, '2026-05-01 09:50:48', '2026-05-01 09:50:48', NULL),
(2, 4, 11, 1, 2, 16, 'Amazing journey! Highly professional driver.', 5.00, '2026-05-20 13:37:48', '2026-05-20 13:37:48', NULL),
(3, 6, 11, 3, 11, 16, 'Amazing journey! Highly professional driver.', 4.00, '2026-05-07 08:16:48', '2026-05-07 08:16:48', NULL),
(4, 8, 10, 3, 11, 4, 'Amazing journey! Highly professional driver.', 4.00, '2026-05-03 02:27:48', '2026-05-03 02:27:48', NULL),
(5, 11, 9, 1, 4, 12, 'Amazing journey! Highly professional driver.', 4.00, '2026-05-12 15:01:48', '2026-05-12 15:01:48', NULL),
(6, 12, 9, 1, 5, 14, 'Amazing journey! Highly professional driver.', 4.00, '2026-05-10 03:14:48', '2026-05-10 03:14:48', NULL),
(7, 14, 10, 2, 6, 13, 'Amazing journey! Highly professional driver.', 4.00, '2026-05-05 18:27:48', '2026-05-05 18:27:48', NULL),
(8, 15, 8, 1, 5, 15, 'Amazing journey! Highly professional driver.', 4.00, '2026-05-22 04:51:48', '2026-05-22 04:51:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rider_wallets`
--

CREATE TABLE `rider_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rider_wallets`
--

INSERT INTO `rider_wallets` (`id`, `rider_id`, `balance`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 919.54, '2026-05-23 05:31:41', '2026-05-23 05:31:49', NULL),
(2, 7, 597.06, '2026-05-23 05:31:41', '2026-05-23 05:31:49', NULL),
(3, 8, 568.26, '2026-05-23 05:31:42', '2026-05-23 05:31:49', NULL),
(4, 9, -12.96, '2026-05-23 05:31:43', '2026-05-23 05:31:49', NULL),
(5, 10, 23.76, '2026-05-23 05:31:43', '2026-05-23 05:31:49', NULL),
(6, 11, -17.34, '2026-05-23 05:31:44', '2026-05-23 05:31:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rider_wallet_histories`
--

CREATE TABLE `rider_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rider_wallet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `type` enum('credit','debit') DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `from_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rider_wallet_histories`
--

INSERT INTO `rider_wallet_histories` (`id`, `rider_wallet_id`, `order_id`, `amount`, `type`, `detail`, `transaction_id`, `from_user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 1, 77.70, 'debit', 'Paid for Ride #1000', 'TXN-R-245992', 11, '2026-05-01 09:35:48', '2026-05-01 09:35:48', NULL),
(2, 4, 2, 78.02, 'debit', 'Paid for Ride #1001', 'TXN-R-162697', 9, '2026-04-30 11:12:48', '2026-04-30 11:12:48', NULL),
(3, 5, 3, 80.38, 'debit', 'Paid for Ride #1002', 'TXN-R-906322', 10, '2026-05-07 03:24:48', '2026-05-07 03:24:48', NULL),
(4, 6, 4, 88.66, 'debit', 'Paid for Ride #1003', 'TXN-R-511670', 11, '2026-05-20 13:22:48', '2026-05-20 13:22:48', NULL),
(5, 5, 5, 87.74, 'debit', 'Paid for Ride #1004', 'TXN-R-864415', 10, '2026-05-01 21:14:48', '2026-05-01 21:14:48', NULL),
(6, 6, 6, 88.86, 'debit', 'Paid for Ride #1005', 'TXN-R-566477', 11, '2026-05-07 08:01:48', '2026-05-07 08:01:48', NULL),
(7, 5, 7, 63.82, 'debit', 'Paid for Ride #1006', 'TXN-R-280770', 10, '2026-05-10 08:33:48', '2026-05-10 08:33:48', NULL),
(8, 5, 8, 88.66, 'debit', 'Paid for Ride #1007', 'TXN-R-713755', 10, '2026-05-03 02:12:48', '2026-05-03 02:12:48', NULL),
(9, 5, 9, 51.70, 'debit', 'Paid for Ride #1008', 'TXN-R-771937', 10, '2026-05-12 20:06:48', '2026-05-12 20:06:48', NULL),
(10, 1, 10, 80.46, 'debit', 'Paid for Ride #1009', 'TXN-R-536605', 3, '2026-05-10 22:00:48', '2026-05-10 22:00:48', NULL),
(11, 4, 11, 46.22, 'debit', 'Paid for Ride #1010', 'TXN-R-244638', 9, '2026-05-12 14:46:48', '2026-05-12 14:46:48', NULL),
(12, 4, 12, 64.50, 'debit', 'Paid for Ride #1011', 'TXN-R-579515', 9, '2026-05-10 02:59:48', '2026-05-10 02:59:48', NULL),
(13, 2, 13, 50.94, 'debit', 'Paid for Ride #1012', 'TXN-R-488342', 7, '2026-05-03 10:14:48', '2026-05-03 10:14:48', NULL),
(14, 5, 14, 59.94, 'debit', 'Paid for Ride #1013', 'TXN-R-365109', 10, '2026-05-05 18:12:48', '2026-05-05 18:12:48', NULL),
(15, 3, 15, 73.46, 'debit', 'Paid for Ride #1014', 'TXN-R-203051', 8, '2026-05-22 04:36:48', '2026-05-22 04:36:48', NULL),
(16, 6, 16, 79.86, 'debit', 'Paid for Ride #1015', 'TXN-R-920347', 11, '2026-05-02 23:04:48', '2026-05-02 23:04:48', NULL),
(17, 6, 17, 57.26, 'debit', 'Paid for Ride #1016', 'TXN-R-330086', 11, '2026-05-02 01:07:48', '2026-05-02 01:07:48', NULL),
(18, 4, 18, 52.22, 'debit', 'Paid for Ride #1017', 'TXN-R-164089', 9, '2026-05-01 09:45:48', '2026-05-01 09:45:48', NULL),
(19, 3, 19, 33.58, 'debit', 'Paid for Ride #1018', 'TXN-R-743695', 8, '2026-05-08 23:46:48', '2026-05-08 23:46:48', NULL),
(20, 3, 20, 50.70, 'debit', 'Paid for Ride #1019', 'TXN-R-722279', 8, '2026-05-01 20:22:48', '2026-05-01 20:22:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rides`
--

CREATE TABLE `rides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` longtext DEFAULT NULL,
  `ambulance_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ride_number` int(11) DEFAULT NULL,
  `rider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ride_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vehicle_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hourly_package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_total_discount` decimal(8,2) DEFAULT NULL,
  `rider` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`rider`)),
  `currency_symbol` longtext DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `parcel_delivered_otp` int(11) DEFAULT NULL,
  `parcel_receiver` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`parcel_receiver`)),
  `otp` int(11) DEFAULT NULL,
  `cargo_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_otp_verified` int(11) DEFAULT 0,
  `locations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`locations`)),
  `location_coordinates` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`location_coordinates`)),
  `duration` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `distance_unit` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_mode` enum('online','offline') DEFAULT 'online',
  `payment_status` varchar(255) NOT NULL DEFAULT 'PENDING',
  `ride_fare` double DEFAULT NULL,
  `driver_tips` decimal(8,4) DEFAULT NULL,
  `tax` decimal(8,4) DEFAULT NULL,
  `platform_fees` decimal(8,4) DEFAULT NULL,
  `zone_charge` decimal(8,4) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `processing_fee` double DEFAULT NULL,
  `wallet_balance` decimal(8,4) DEFAULT NULL,
  `base_fare_charge` double DEFAULT NULL,
  `additional_distance_charge` double DEFAULT NULL,
  `additional_minute_charge` double DEFAULT NULL,
  `additional_weight_charge` double DEFAULT NULL,
  `bid_extra_amount` double DEFAULT NULL,
  `commission` double DEFAULT NULL,
  `driver_commission` double DEFAULT NULL,
  `platform_fee` double DEFAULT NULL,
  `total_extra_charge` double NOT NULL DEFAULT 0,
  `is_peak_zone` int(11) NOT NULL DEFAULT 0,
  `peak_zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `peak_zone_charge` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `rider_cancellation_charge` double DEFAULT NULL,
  `driver_cancellation_charge` double DEFAULT NULL,
  `waiting_charges` double DEFAULT NULL,
  `waiting_total_times` double DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `cancellation_reason` longtext DEFAULT NULL,
  `invoice_url` varchar(255) DEFAULT NULL,
  `start_ride_locations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`start_ride_locations`)),
  `start_ride_coordinates` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`start_ride_coordinates`)),
  `invoice_id` longtext DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dropped_at` timestamp NULL DEFAULT NULL,
  `parcel_otp_verified_at` timestamp NULL DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `no_of_days` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_rent` double DEFAULT NULL,
  `vehicle_rent` double DEFAULT NULL,
  `is_with_driver` int(11) NOT NULL DEFAULT 0,
  `rental_vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assign_type` longtext DEFAULT NULL,
  `assigned_driver` longtext DEFAULT NULL,
  `vehicle_per_day_price` decimal(8,4) DEFAULT NULL,
  `driver_per_day_charge` decimal(8,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rides`
--

INSERT INTO `rides` (`id`, `uuid`, `ambulance_id`, `ride_number`, `rider_id`, `ride_status_id`, `service_id`, `service_category_id`, `vehicle_type_id`, `driver_id`, `coupon_id`, `hourly_package_id`, `coupon_total_discount`, `rider`, `currency_symbol`, `currency_code`, `parcel_delivered_otp`, `parcel_receiver`, `otp`, `cargo_image_id`, `is_otp_verified`, `locations`, `location_coordinates`, `duration`, `weight`, `distance`, `distance_unit`, `payment_method`, `payment_mode`, `payment_status`, `ride_fare`, `driver_tips`, `tax`, `platform_fees`, `zone_charge`, `description`, `processing_fee`, `wallet_balance`, `base_fare_charge`, `additional_distance_charge`, `additional_minute_charge`, `additional_weight_charge`, `bid_extra_amount`, `commission`, `driver_commission`, `platform_fee`, `total_extra_charge`, `is_peak_zone`, `peak_zone_id`, `peak_zone_charge`, `sub_total`, `total`, `rider_cancellation_charge`, `driver_cancellation_charge`, `waiting_charges`, `waiting_total_times`, `comment`, `cancellation_reason`, `invoice_url`, `start_ride_locations`, `start_ride_coordinates`, `invoice_id`, `created_by_id`, `dropped_at`, `parcel_otp_verified_at`, `start_time`, `end_time`, `no_of_days`, `driver_rent`, `vehicle_rent`, `is_with_driver`, `rental_vehicle_id`, `assign_type`, `assigned_driver`, `vehicle_per_day_price`, `driver_per_day_charge`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'b02022cd-b3ab-402a-a026-9f50e9dda045', NULL, 1000, 11, 8, 2, 8, 1, 4, NULL, NULL, NULL, '{\"name\":\"David Kim\",\"email\":\"david.k@example.com\",\"phone\":2025550198,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 8907, NULL, 1, '[{\"name\":\"Faisal Mosque, Islamabad, Pakistan\",\"lat\":33.7299,\"lng\":73.0373},{\"name\":\"Centaurus Mall, Islamabad, Pakistan\",\"lat\":33.7077,\"lng\":73.0501}]', '[{\"lat\":40.8101,\"lng\":-73.9501},{\"lat\":40.7736,\"lng\":-73.9566}]', '18 mins', NULL, '4.2', 'km', 'wallet', 'offline', 'COMPLETED', 65, 0.0000, 5.2000, 2.5000, 5.0000, NULL, NULL, NULL, 10, 55, NULL, NULL, NULL, 9.75, 55.25, 2.5, 0, 0, NULL, NULL, 77.7, 77.7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100000', NULL, '2026-05-01 09:35:48', NULL, '2026-05-01 09:13:48', '2026-05-01 09:35:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-01 09:08:48', '2026-05-23 06:12:36', NULL),
(2, '6df5a23c-e818-4c9b-ab93-f708a389c561', NULL, 1001, 9, 8, 1, 3, 8, 16, NULL, NULL, NULL, '{\"name\":\"Marcus Vance\",\"email\":\"marcus.v@example.com\",\"phone\":2025550167,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 3894, NULL, 1, '[{\"name\":\"Blue Area, Islamabad, Pakistan\",\"lat\":33.7118,\"lng\":73.0583},{\"name\":\"Daman-e-Koh, Islamabad, Pakistan\",\"lat\":33.738,\"lng\":73.076}]', '[{\"lat\":40.7233,\"lng\":-74.003},{\"lat\":40.748,\"lng\":-74.0048}]', '10 mins', NULL, '2.9', 'km', 'cash', 'offline', 'COMPLETED', 69, 0.0000, 5.5200, 2.5000, 1.0000, NULL, NULL, NULL, 10, 59, NULL, NULL, NULL, 10.35, 58.65, 2.5, 0, 0, NULL, NULL, 78.02, 78.02, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100001', NULL, '2026-04-30 11:12:48', NULL, '2026-04-30 11:00:48', '2026-04-30 11:12:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-04-30 10:50:48', '2026-05-23 06:12:36', NULL),
(3, '82543613-7d51-40f2-bce0-cb0ec1944f0f', NULL, 1002, 10, 8, 1, 1, 9, 13, NULL, NULL, NULL, '{\"name\":\"Elena Rostova\",\"email\":\"elena.r@example.com\",\"phone\":2025550122,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 6372, NULL, 1, '[{\"name\":\"Giga Mall, Islamabad, Pakistan\",\"lat\":33.5226,\"lng\":73.0945},{\"name\":\"Safa Gold Mall, Islamabad, Pakistan\",\"lat\":33.7169,\"lng\":73.0559}]', '[{\"lat\":40.7785,\"lng\":-73.9742},{\"lat\":40.7588,\"lng\":-73.9851}]', '12 mins', NULL, '2.8', 'km', 'cash', 'offline', 'COMPLETED', 61, 7.0000, 4.8800, 2.5000, 5.0000, NULL, NULL, NULL, 10, 51, NULL, NULL, NULL, 9.15, 51.85, 2.5, 0, 0, NULL, NULL, 73.38, 80.38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100002', NULL, '2026-05-07 03:24:48', NULL, '2026-05-07 03:11:48', '2026-05-07 03:24:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-07 03:03:48', '2026-05-23 06:12:36', NULL),
(4, '092276ce-22f2-4052-9bf3-06de02da5dc1', NULL, 1003, 11, 8, 1, 2, 5, 16, NULL, NULL, NULL, '{\"name\":\"David Kim\",\"email\":\"david.k@example.com\",\"phone\":2025550198,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 6610, NULL, 1, '[{\"name\":\"Blue Area, Islamabad, Pakistan\",\"lat\":33.7118,\"lng\":73.0583},{\"name\":\"Daman-e-Koh, Islamabad, Pakistan\",\"lat\":33.738,\"lng\":73.076}]', '[{\"lat\":40.7233,\"lng\":-74.003},{\"lat\":40.748,\"lng\":-74.0048}]', '10 mins', NULL, '2.9', 'km', 'wallet', 'offline', 'COMPLETED', 77, 0.0000, 6.1600, 2.5000, 3.0000, NULL, NULL, NULL, 10, 67, NULL, NULL, NULL, 11.55, 65.45, 2.5, 0, 0, NULL, NULL, 88.66, 88.66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100003', NULL, '2026-05-20 13:22:48', NULL, '2026-05-20 13:11:48', '2026-05-20 13:22:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-20 13:02:48', '2026-05-23 06:12:36', NULL),
(5, 'fbee49f1-33af-4fec-abc6-ffeed8bd8253', NULL, 1004, 10, 8, 2, 6, 3, 14, NULL, NULL, NULL, '{\"name\":\"Elena Rostova\",\"email\":\"elena.r@example.com\",\"phone\":2025550122,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 2155, NULL, 1, '[{\"name\":\"Blue Area, Islamabad, Pakistan\",\"lat\":33.7118,\"lng\":73.0583},{\"name\":\"Daman-e-Koh, Islamabad, Pakistan\",\"lat\":33.738,\"lng\":73.076}]', '[{\"lat\":40.7233,\"lng\":-74.003},{\"lat\":40.748,\"lng\":-74.0048}]', '10 mins', NULL, '2.9', 'km', 'wallet', 'offline', 'COMPLETED', 78, 0.0000, 6.2400, 2.5000, 1.0000, NULL, NULL, NULL, 10, 68, NULL, NULL, NULL, 11.7, 66.3, 2.5, 0, 0, NULL, NULL, 87.74, 87.74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100004', NULL, '2026-05-01 21:14:48', NULL, '2026-05-01 20:59:48', '2026-05-01 21:14:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-01 20:52:48', '2026-05-23 06:12:36', NULL),
(6, '60075cf1-52bd-4387-b63c-e4466f25d648', NULL, 1005, 11, 8, 3, 11, 5, 16, NULL, NULL, NULL, '{\"name\":\"David Kim\",\"email\":\"david.k@example.com\",\"phone\":2025550198,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 6567, NULL, 1, '[{\"name\":\"Blue Area, Islamabad, Pakistan\",\"lat\":33.7118,\"lng\":73.0583},{\"name\":\"Daman-e-Koh, Islamabad, Pakistan\",\"lat\":33.738,\"lng\":73.076}]', '[{\"lat\":40.7233,\"lng\":-74.003},{\"lat\":40.748,\"lng\":-74.0048}]', '10 mins', NULL, '2.9', 'km', 'cash', 'offline', 'COMPLETED', 67, 10.0000, 5.3600, 2.5000, 4.0000, NULL, NULL, NULL, 10, 57, NULL, NULL, NULL, 10.05, 56.95, 2.5, 0, 0, NULL, NULL, 78.86, 88.86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100005', NULL, '2026-05-07 08:01:48', NULL, '2026-05-07 07:46:48', '2026-05-07 08:01:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-07 07:37:48', '2026-05-23 06:12:36', NULL),
(7, '0bd72e2c-e81f-47da-957c-2a6a5ff608ad', NULL, 1006, 10, 8, 2, 7, 4, 13, NULL, NULL, NULL, '{\"name\":\"Elena Rostova\",\"email\":\"elena.r@example.com\",\"phone\":2025550122,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 3875, NULL, 1, '[{\"name\":\"Giga Mall, Islamabad, Pakistan\",\"lat\":33.5226,\"lng\":73.0945},{\"name\":\"Safa Gold Mall, Islamabad, Pakistan\",\"lat\":33.7169,\"lng\":73.0559}]', '[{\"lat\":40.7785,\"lng\":-73.9742},{\"lat\":40.7588,\"lng\":-73.9851}]', '12 mins', NULL, '2.8', 'km', 'cash', 'offline', 'COMPLETED', 54, 0.0000, 4.3200, 2.5000, 3.0000, NULL, NULL, NULL, 10, 44, NULL, NULL, NULL, 8.1, 45.9, 2.5, 0, 0, NULL, NULL, 63.82, 63.82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100006', NULL, '2026-05-10 08:33:48', NULL, '2026-05-10 08:20:48', '2026-05-10 08:33:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-10 08:11:48', '2026-05-23 06:12:36', NULL),
(8, '3ffd62eb-d013-44e6-b835-2e4cb54a3356', NULL, 1007, 10, 8, 3, 11, 2, 4, NULL, NULL, NULL, '{\"name\":\"Elena Rostova\",\"email\":\"elena.r@example.com\",\"phone\":2025550122,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 9204, NULL, 1, '[{\"name\":\"Faisal Mosque, Islamabad, Pakistan\",\"lat\":33.7299,\"lng\":73.0373},{\"name\":\"Centaurus Mall, Islamabad, Pakistan\",\"lat\":33.7077,\"lng\":73.0501}]', '[{\"lat\":40.8101,\"lng\":-73.9501},{\"lat\":40.7736,\"lng\":-73.9566}]', '18 mins', NULL, '4.2', 'km', 'cash', 'offline', 'COMPLETED', 77, 0.0000, 6.1600, 2.5000, 3.0000, NULL, NULL, NULL, 10, 67, NULL, NULL, NULL, 11.55, 65.45, 2.5, 0, 0, NULL, NULL, 88.66, 88.66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100007', NULL, '2026-05-03 02:12:48', NULL, '2026-05-03 01:59:48', '2026-05-03 02:12:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-03 01:52:48', '2026-05-23 06:12:36', NULL),
(9, 'c5c3f02f-7d0d-430e-b8e5-5c5831781225', NULL, 1008, 10, 8, 2, 7, 10, 14, NULL, NULL, NULL, '{\"name\":\"Elena Rostova\",\"email\":\"elena.r@example.com\",\"phone\":2025550122,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 4747, NULL, 1, '[{\"name\":\"Giga Mall, Islamabad, Pakistan\",\"lat\":33.5226,\"lng\":73.0945},{\"name\":\"Safa Gold Mall, Islamabad, Pakistan\",\"lat\":33.7169,\"lng\":73.0559}]', '[{\"lat\":40.7785,\"lng\":-73.9742},{\"lat\":40.7588,\"lng\":-73.9851}]', '12 mins', NULL, '2.8', 'km', 'cash', 'offline', 'COMPLETED', 40, 3.0000, 3.2000, 2.5000, 3.0000, NULL, NULL, NULL, 10, 30, NULL, NULL, NULL, 6, 34, 2.5, 0, 0, NULL, NULL, 48.7, 51.7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100008', NULL, '2026-05-12 20:06:48', NULL, '2026-05-12 19:54:48', '2026-05-12 20:06:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-12 19:48:48', '2026-05-23 06:12:36', NULL),
(10, '172c9274-fbed-459e-81fb-012335bec0c0', NULL, 1009, 3, 8, 2, 6, 10, 12, NULL, NULL, NULL, '{\"name\":\"John Due\",\"email\":\"rider@example.com\",\"phone\":123456789,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 5549, NULL, 1, '[{\"name\":\"Jinnah Super Market, Islamabad, Pakistan\",\"lat\":33.7274,\"lng\":73.0543},{\"name\":\"Lake View Park, Islamabad, Pakistan\",\"lat\":33.7022,\"lng\":73.1252}]', '[{\"lat\":40.7074,\"lng\":-74.0113},{\"lat\":40.7003,\"lng\":-73.9967}]', '15 mins', NULL, '3.5', 'km', 'cash', 'offline', 'COMPLETED', 62, 8.0000, 4.9600, 2.5000, 3.0000, NULL, NULL, NULL, 10, 52, NULL, NULL, NULL, 9.3, 52.7, 2.5, 0, 0, NULL, NULL, 72.46, 80.46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100009', NULL, '2026-05-10 22:00:48', NULL, '2026-05-10 21:42:48', '2026-05-10 22:00:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-10 21:37:48', '2026-05-23 06:12:36', NULL),
(11, '887a284e-2a41-4ae3-a93a-5d36c7ebc738', NULL, 1010, 9, 8, 1, 4, 2, 12, NULL, NULL, NULL, '{\"name\":\"Marcus Vance\",\"email\":\"marcus.v@example.com\",\"phone\":2025550167,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 4980, NULL, 1, '[{\"name\":\"Jinnah Super Market, Islamabad, Pakistan\",\"lat\":33.7274,\"lng\":73.0543},{\"name\":\"Lake View Park, Islamabad, Pakistan\",\"lat\":33.7022,\"lng\":73.1252}]', '[{\"lat\":40.7074,\"lng\":-74.0113},{\"lat\":40.7003,\"lng\":-73.9967}]', '15 mins', NULL, '3.5', 'km', 'wallet', 'offline', 'COMPLETED', 34, 2.0000, 2.7200, 2.5000, 5.0000, NULL, NULL, NULL, 10, 24, NULL, NULL, NULL, 5.1, 28.9, 2.5, 0, 0, NULL, NULL, 44.22, 46.22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100010', NULL, '2026-05-12 14:46:48', NULL, '2026-05-12 14:33:48', '2026-05-12 14:46:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-12 14:25:48', '2026-05-23 06:12:36', NULL),
(12, '29cebf46-012d-4893-9b5e-da0fb1af0ddf', NULL, 1011, 9, 8, 1, 5, 7, 14, NULL, NULL, NULL, '{\"name\":\"Marcus Vance\",\"email\":\"marcus.v@example.com\",\"phone\":2025550167,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 1219, NULL, 1, '[{\"name\":\"Islamabad International Airport, Pakistan\",\"lat\":33.551,\"lng\":72.8222},{\"name\":\"Rawal Lake, Islamabad, Pakistan\",\"lat\":33.7,\"lng\":73.12}]', '[{\"lat\":40.7527,\"lng\":-73.9772},{\"lat\":40.7484,\"lng\":-73.9857}]', '6 mins', NULL, '1.2', 'km', 'wallet', 'offline', 'COMPLETED', 50, 3.0000, 4.0000, 2.5000, 5.0000, NULL, NULL, NULL, 10, 40, NULL, NULL, NULL, 7.5, 42.5, 2.5, 0, 0, NULL, NULL, 61.5, 64.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100011', NULL, '2026-05-10 02:59:48', NULL, '2026-05-10 02:34:48', '2026-05-10 02:59:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-10 02:26:48', '2026-05-23 06:12:36', NULL),
(13, 'f78d14a5-db31-49ab-b458-73f290bc29fb', NULL, 1012, 7, 8, 2, 7, 5, 14, NULL, NULL, NULL, '{\"name\":\"Alexander Wright\",\"email\":\"alexander.w@example.com\",\"phone\":2025550143,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 4706, NULL, 1, '[{\"name\":\"Islamabad International Airport, Pakistan\",\"lat\":33.551,\"lng\":72.8222},{\"name\":\"Rawal Lake, Islamabad, Pakistan\",\"lat\":33.7,\"lng\":73.12}]', '[{\"lat\":40.7527,\"lng\":-73.9772},{\"lat\":40.7484,\"lng\":-73.9857}]', '6 mins', NULL, '1.2', 'km', 'wallet', 'offline', 'COMPLETED', 43, 0.0000, 3.4400, 2.5000, 2.0000, NULL, NULL, NULL, 10, 33, NULL, NULL, NULL, 6.45, 36.55, 2.5, 0, 0, NULL, NULL, 50.94, 50.94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100012', NULL, '2026-05-03 10:14:48', NULL, '2026-05-03 09:59:48', '2026-05-03 10:14:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-03 09:54:48', '2026-05-23 06:12:36', NULL),
(14, '99b76745-aecd-4f16-9fbf-929e7714f084', NULL, 1013, 10, 8, 2, 6, 8, 13, NULL, NULL, NULL, '{\"name\":\"Elena Rostova\",\"email\":\"elena.r@example.com\",\"phone\":2025550122,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 8942, NULL, 1, '[{\"name\":\"Giga Mall, Islamabad, Pakistan\",\"lat\":33.5226,\"lng\":73.0945},{\"name\":\"Safa Gold Mall, Islamabad, Pakistan\",\"lat\":33.7169,\"lng\":73.0559}]', '[{\"lat\":40.7785,\"lng\":-73.9742},{\"lat\":40.7588,\"lng\":-73.9851}]', '12 mins', NULL, '2.8', 'km', 'wallet', 'offline', 'COMPLETED', 43, 7.0000, 3.4400, 2.5000, 4.0000, NULL, NULL, NULL, 10, 33, NULL, NULL, NULL, 6.45, 36.55, 2.5, 0, 0, NULL, NULL, 52.94, 59.94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100013', NULL, '2026-05-05 18:12:48', NULL, '2026-05-05 17:53:48', '2026-05-05 18:12:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-05 17:43:48', '2026-05-23 06:12:36', NULL),
(15, '51a40613-5b74-4b4c-9028-c297b5d51a3c', NULL, 1014, 8, 8, 1, 5, 1, 15, NULL, NULL, NULL, '{\"name\":\"Sophia Martinez\",\"email\":\"sophia.m@example.com\",\"phone\":2025550189,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 5012, NULL, 1, '[{\"name\":\"Giga Mall, Islamabad, Pakistan\",\"lat\":33.5226,\"lng\":73.0945},{\"name\":\"Safa Gold Mall, Islamabad, Pakistan\",\"lat\":33.7169,\"lng\":73.0559}]', '[{\"lat\":40.7785,\"lng\":-73.9742},{\"lat\":40.7588,\"lng\":-73.9851}]', '12 mins', NULL, '2.8', 'km', 'wallet', 'offline', 'COMPLETED', 62, 0.0000, 4.9600, 2.5000, 4.0000, NULL, NULL, NULL, 10, 52, NULL, NULL, NULL, 9.3, 52.7, 2.5, 0, 0, NULL, NULL, 73.46, 73.46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100014', NULL, '2026-05-22 04:36:48', NULL, '2026-05-22 04:22:48', '2026-05-22 04:36:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-22 04:16:48', '2026-05-23 06:12:36', NULL),
(16, 'd86f9862-5d61-485e-b4d3-86416c5c7f98', NULL, 1015, 11, 8, 2, 7, 5, 13, NULL, NULL, NULL, '{\"name\":\"David Kim\",\"email\":\"david.k@example.com\",\"phone\":2025550198,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 8998, NULL, 1, '[{\"name\":\"Jinnah Super Market, Islamabad, Pakistan\",\"lat\":33.7274,\"lng\":73.0543},{\"name\":\"Lake View Park, Islamabad, Pakistan\",\"lat\":33.7022,\"lng\":73.1252}]', '[{\"lat\":40.7074,\"lng\":-74.0113},{\"lat\":40.7003,\"lng\":-73.9967}]', '15 mins', NULL, '3.5', 'km', 'wallet', 'offline', 'COMPLETED', 67, 0.0000, 5.3600, 2.5000, 5.0000, NULL, NULL, NULL, 10, 57, NULL, NULL, NULL, 10.05, 56.95, 2.5, 0, 0, NULL, NULL, 79.86, 79.86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100015', NULL, '2026-05-02 23:04:48', NULL, '2026-05-02 22:53:48', '2026-05-02 23:04:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-02 22:46:48', '2026-05-23 06:12:36', NULL),
(17, 'b7e2397e-dbc3-40ae-b334-5a5df611f007', NULL, 1016, 11, 8, 4, 4, 3, 13, NULL, NULL, NULL, '{\"name\":\"David Kim\",\"email\":\"david.k@example.com\",\"phone\":2025550198,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 3535, NULL, 1, '[{\"name\":\"Faisal Mosque, Islamabad, Pakistan\",\"lat\":33.7299,\"lng\":73.0373},{\"name\":\"Centaurus Mall, Islamabad, Pakistan\",\"lat\":33.7077,\"lng\":73.0501}]', '[{\"lat\":40.8101,\"lng\":-73.9501},{\"lat\":40.7736,\"lng\":-73.9566}]', '18 mins', NULL, '4.2', 'km', 'cash', 'offline', 'COMPLETED', 47, 0.0000, 3.7600, 2.5000, 4.0000, NULL, NULL, NULL, 10, 37, NULL, NULL, NULL, 7.05, 39.95, 2.5, 0, 0, NULL, NULL, 57.26, 57.26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100016', NULL, '2026-05-02 01:07:48', NULL, '2026-05-02 00:54:48', '2026-05-02 01:07:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-02 00:46:48', '2026-05-23 06:12:36', NULL),
(18, '8388be21-3876-44cf-8738-a5f45d66048a', NULL, 1017, 9, 8, 1, 2, 10, 4, NULL, NULL, NULL, '{\"name\":\"Marcus Vance\",\"email\":\"marcus.v@example.com\",\"phone\":2025550167,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 2048, NULL, 1, '[{\"name\":\"Giga Mall, Islamabad, Pakistan\",\"lat\":33.5226,\"lng\":73.0945},{\"name\":\"Safa Gold Mall, Islamabad, Pakistan\",\"lat\":33.7169,\"lng\":73.0559}]', '[{\"lat\":40.7785,\"lng\":-73.9742},{\"lat\":40.7588,\"lng\":-73.9851}]', '12 mins', NULL, '2.8', 'km', 'cash', 'offline', 'COMPLETED', 34, 9.0000, 2.7200, 2.5000, 4.0000, NULL, NULL, NULL, 10, 24, NULL, NULL, NULL, 5.1, 28.9, 2.5, 0, 0, NULL, NULL, 43.22, 52.22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100017', NULL, '2026-05-01 09:45:48', NULL, '2026-05-01 09:28:48', '2026-05-01 09:45:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-01 09:20:48', '2026-05-23 06:12:36', NULL),
(19, '0c176927-9e84-46fd-8f23-93e46639152d', NULL, 1018, 8, 8, 4, 2, 8, 16, NULL, NULL, NULL, '{\"name\":\"Sophia Martinez\",\"email\":\"sophia.m@example.com\",\"phone\":2025550189,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 4793, NULL, 1, '[{\"name\":\"Blue Area, Islamabad, Pakistan\",\"lat\":33.7118,\"lng\":73.0583},{\"name\":\"Daman-e-Koh, Islamabad, Pakistan\",\"lat\":33.738,\"lng\":73.076}]', '[{\"lat\":40.7233,\"lng\":-74.003},{\"lat\":40.748,\"lng\":-74.0048}]', '10 mins', NULL, '2.9', 'km', 'cash', 'offline', 'COMPLETED', 26, 0.0000, 2.0800, 2.5000, 3.0000, NULL, NULL, NULL, 10, 16, NULL, NULL, NULL, 3.9, 22.1, 2.5, 0, 0, NULL, NULL, 33.58, 33.58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100018', NULL, '2026-05-08 23:46:48', NULL, '2026-05-08 23:28:48', '2026-05-08 23:46:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-08 23:20:48', '2026-05-23 06:12:36', NULL),
(20, '6c8ed5a2-6066-4597-b105-fbbf63bab429', NULL, 1019, 8, 8, 2, 6, 4, 14, NULL, NULL, NULL, '{\"name\":\"Sophia Martinez\",\"email\":\"sophia.m@example.com\",\"phone\":2025550189,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 7100, NULL, 1, '[{\"name\":\"Jinnah Super Market, Islamabad, Pakistan\",\"lat\":33.7274,\"lng\":73.0543},{\"name\":\"Lake View Park, Islamabad, Pakistan\",\"lat\":33.7022,\"lng\":73.1252}]', '[{\"lat\":40.7074,\"lng\":-74.0113},{\"lat\":40.7003,\"lng\":-73.9967}]', '15 mins', NULL, '3.5', 'km', 'cash', 'offline', 'COMPLETED', 40, 0.0000, 3.2000, 2.5000, 5.0000, NULL, NULL, NULL, 10, 30, NULL, NULL, NULL, 6, 34, 2.5, 0, 0, NULL, NULL, 50.7, 50.7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100019', NULL, '2026-05-01 20:22:48', NULL, '2026-05-01 20:00:48', '2026-05-01 20:22:48', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-05-01 19:50:48', '2026-05-23 06:12:36', NULL),
(21, '6eb5bc64-5bc2-412a-b605-683fea3ed666', NULL, 1020, 9, 7, 1, 5, 7, 14, NULL, NULL, NULL, '{\"name\":\"Marcus Vance\",\"email\":\"marcus.v@example.com\",\"phone\":2025550167,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 1535, NULL, 0, '[{\"name\":\"Faisal Mosque, Islamabad, Pakistan\",\"lat\":33.7299,\"lng\":73.0373},{\"name\":\"Centaurus Mall, Islamabad, Pakistan\",\"lat\":33.7077,\"lng\":73.0501}]', '[{\"lat\":40.8101,\"lng\":-73.9501},{\"lat\":40.7736,\"lng\":-73.9566}]', '18 mins', NULL, '4.2', 'km', 'wallet', 'offline', 'PENDING', 49, 0.0000, 3.9200, 2.5000, 1.0000, NULL, NULL, NULL, 10, 39, NULL, NULL, NULL, 7.35, 41.65, 2.5, 0, 0, NULL, NULL, 56.42, 56.42, NULL, NULL, NULL, NULL, NULL, 'Found alternative transportation', NULL, NULL, NULL, 'INV-100020', NULL, NULL, NULL, '2026-03-09 17:36:48', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-03-09 17:31:48', '2026-05-23 06:12:36', NULL),
(22, 'cf2a637a-1ba2-4fbe-85d6-edd7a985c821', NULL, 1021, 9, 7, 1, 3, 5, 14, NULL, NULL, NULL, '{\"name\":\"Marcus Vance\",\"email\":\"marcus.v@example.com\",\"phone\":2025550167,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 8646, NULL, 0, '[{\"name\":\"Faisal Mosque, Islamabad, Pakistan\",\"lat\":33.7299,\"lng\":73.0373},{\"name\":\"Centaurus Mall, Islamabad, Pakistan\",\"lat\":33.7077,\"lng\":73.0501}]', '[{\"lat\":40.8101,\"lng\":-73.9501},{\"lat\":40.7736,\"lng\":-73.9566}]', '18 mins', NULL, '4.2', 'km', 'wallet', 'offline', 'PENDING', 77, 0.0000, 6.1600, 2.5000, 3.0000, NULL, NULL, NULL, 10, 67, NULL, NULL, NULL, 11.55, 65.45, 2.5, 0, 0, NULL, NULL, 88.66, 88.66, NULL, NULL, NULL, NULL, NULL, 'Driver took too long to arrive', NULL, NULL, NULL, 'INV-100021', NULL, NULL, NULL, '2026-04-14 22:38:48', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-04-14 22:31:48', '2026-05-23 06:12:36', NULL),
(23, '75491009-1c22-4aff-a23e-67601f31e1e2', NULL, 1022, 7, 7, 4, 8, 2, 12, NULL, NULL, NULL, '{\"name\":\"Alexander Wright\",\"email\":\"alexander.w@example.com\",\"phone\":2025550143,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 5899, NULL, 0, '[{\"name\":\"Faisal Mosque, Islamabad, Pakistan\",\"lat\":33.7299,\"lng\":73.0373},{\"name\":\"Centaurus Mall, Islamabad, Pakistan\",\"lat\":33.7077,\"lng\":73.0501}]', '[{\"lat\":40.8101,\"lng\":-73.9501},{\"lat\":40.7736,\"lng\":-73.9566}]', '18 mins', NULL, '4.2', 'km', 'cash', 'offline', 'PENDING', 68, 0.0000, 5.4400, 2.5000, 1.0000, NULL, NULL, NULL, 10, 58, NULL, NULL, NULL, 10.2, 57.8, 2.5, 0, 0, NULL, NULL, 76.94, 76.94, NULL, NULL, NULL, NULL, NULL, 'Driver requested to cancel', NULL, NULL, NULL, 'INV-100022', NULL, NULL, NULL, '2026-03-07 02:36:48', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-03-07 02:31:48', '2026-05-23 06:12:36', NULL),
(24, '024153dd-4fd9-4bab-b2b3-2c24bb0a5178', NULL, 1023, 9, 7, 3, 9, 5, 13, NULL, NULL, NULL, '{\"name\":\"Marcus Vance\",\"email\":\"marcus.v@example.com\",\"phone\":2025550167,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 2782, NULL, 0, '[{\"name\":\"Blue Area, Islamabad, Pakistan\",\"lat\":33.7118,\"lng\":73.0583},{\"name\":\"Daman-e-Koh, Islamabad, Pakistan\",\"lat\":33.738,\"lng\":73.076}]', '[{\"lat\":40.7233,\"lng\":-74.003},{\"lat\":40.748,\"lng\":-74.0048}]', '10 mins', NULL, '2.9', 'km', 'cash', 'offline', 'PENDING', 76, 0.0000, 6.0800, 2.5000, 5.0000, NULL, NULL, NULL, 10, 66, NULL, NULL, NULL, 11.4, 64.6, 2.5, 0, 0, NULL, NULL, 89.58, 89.58, NULL, NULL, NULL, NULL, NULL, 'Rider cancelled by accident', NULL, NULL, NULL, 'INV-100023', NULL, NULL, NULL, '2026-04-15 12:37:48', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-04-15 12:31:48', '2026-05-23 06:12:36', NULL),
(25, '5189ece2-437a-456b-8593-14793e4596cc', NULL, 1024, 10, 7, 1, 4, 9, 13, NULL, NULL, NULL, '{\"name\":\"Elena Rostova\",\"email\":\"elena.r@example.com\",\"phone\":2025550122,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 7114, NULL, 0, '[{\"name\":\"Giga Mall, Islamabad, Pakistan\",\"lat\":33.5226,\"lng\":73.0945},{\"name\":\"Safa Gold Mall, Islamabad, Pakistan\",\"lat\":33.7169,\"lng\":73.0559}]', '[{\"lat\":40.7785,\"lng\":-73.9742},{\"lat\":40.7588,\"lng\":-73.9851}]', '12 mins', NULL, '2.8', 'km', 'cash', 'offline', 'PENDING', 33, 0.0000, 2.6400, 2.5000, 4.0000, NULL, NULL, NULL, 10, 23, NULL, NULL, NULL, 4.95, 28.05, 2.5, 0, 0, NULL, NULL, 42.14, 42.14, NULL, NULL, NULL, NULL, NULL, 'Rider cancelled by accident', NULL, NULL, NULL, 'INV-100024', NULL, NULL, NULL, '2026-03-10 07:36:48', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-03-10 07:31:48', '2026-05-23 06:12:36', NULL),
(26, '3c41cc56-b24a-4fab-b923-09c24a7e88c2', NULL, 1025, 8, 1, 4, 10, 9, NULL, NULL, NULL, NULL, '{\"name\":\"Sophia Martinez\",\"email\":\"sophia.m@example.com\",\"phone\":2025550189,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 1519, NULL, 0, '[{\"name\":\"Blue Area, Islamabad, Pakistan\",\"lat\":33.7118,\"lng\":73.0583},{\"name\":\"Daman-e-Koh, Islamabad, Pakistan\",\"lat\":33.738,\"lng\":73.076}]', '[{\"lat\":40.7233,\"lng\":-74.003},{\"lat\":40.748,\"lng\":-74.0048}]', '10 mins', NULL, '2.9', 'km', 'wallet', 'offline', 'PENDING', 49, 0.0000, 3.9200, 2.5000, 3.0000, NULL, NULL, NULL, 10, 39, NULL, NULL, NULL, 7.35, 41.65, 2.5, 0, 0, NULL, NULL, 58.42, 58.42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-04-19 23:31:48', '2026-05-23 06:12:36', NULL),
(27, '7e954fc2-97c7-4e29-849c-adfd296f325e', NULL, 1026, 8, 3, 2, 6, 5, 14, NULL, NULL, NULL, '{\"name\":\"Sophia Martinez\",\"email\":\"sophia.m@example.com\",\"phone\":2025550189,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 7437, NULL, 0, '[{\"name\":\"Faisal Mosque, Islamabad, Pakistan\",\"lat\":33.7299,\"lng\":73.0373},{\"name\":\"Centaurus Mall, Islamabad, Pakistan\",\"lat\":33.7077,\"lng\":73.0501}]', '[{\"lat\":40.8101,\"lng\":-73.9501},{\"lat\":40.7736,\"lng\":-73.9566}]', '18 mins', NULL, '4.2', 'km', 'cash', 'offline', 'PENDING', 43, 0.0000, 3.4400, 2.5000, 2.0000, NULL, NULL, NULL, 10, 33, NULL, NULL, NULL, 6.45, 36.55, 2.5, 0, 0, NULL, NULL, 50.94, 50.94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100026', NULL, NULL, NULL, '2026-03-07 09:38:48', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-03-07 09:31:48', '2026-05-23 06:12:36', NULL),
(28, '0ea13080-fdf8-4db1-9e82-ca1a3a1782f0', NULL, 1027, 7, 6, 4, 10, 9, 13, NULL, NULL, NULL, '{\"name\":\"Alexander Wright\",\"email\":\"alexander.w@example.com\",\"phone\":2025550143,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 3285, NULL, 1, '[{\"name\":\"Blue Area, Islamabad, Pakistan\",\"lat\":33.7118,\"lng\":73.0583},{\"name\":\"Daman-e-Koh, Islamabad, Pakistan\",\"lat\":33.738,\"lng\":73.076}]', '[{\"lat\":40.7233,\"lng\":-74.003},{\"lat\":40.748,\"lng\":-74.0048}]', '10 mins', NULL, '2.9', 'km', 'wallet', 'offline', 'PENDING', 80, 0.0000, 6.4000, 2.5000, 5.0000, NULL, NULL, NULL, 10, 70, NULL, NULL, NULL, 12, 68, 2.5, 0, 0, NULL, NULL, 93.9, 93.9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100027', NULL, NULL, NULL, '2026-02-23 21:40:48', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-02-23 21:31:48', '2026-05-23 06:12:36', NULL),
(29, 'cf010669-2b05-4d32-8abd-72ae3c0a38fb', NULL, 1028, 11, 6, 4, 11, 10, 16, NULL, NULL, NULL, '{\"name\":\"David Kim\",\"email\":\"david.k@example.com\",\"phone\":2025550198,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 7533, NULL, 1, '[{\"name\":\"Islamabad International Airport, Pakistan\",\"lat\":33.551,\"lng\":72.8222},{\"name\":\"Rawal Lake, Islamabad, Pakistan\",\"lat\":33.7,\"lng\":73.12}]', '[{\"lat\":40.7527,\"lng\":-73.9772},{\"lat\":40.7484,\"lng\":-73.9857}]', '6 mins', NULL, '1.2', 'km', 'wallet', 'offline', 'PENDING', 80, 0.0000, 6.4000, 2.5000, 3.0000, NULL, NULL, NULL, 10, 70, NULL, NULL, NULL, 12, 68, 2.5, 0, 0, NULL, NULL, 91.9, 91.9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100028', NULL, NULL, NULL, '2026-03-21 13:36:48', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-03-21 13:31:48', '2026-05-23 06:12:36', NULL),
(30, 'a0581446-b380-4664-b651-565bf2f38d14', NULL, 1029, 10, 3, 4, 3, 5, 4, NULL, NULL, NULL, '{\"name\":\"Elena Rostova\",\"email\":\"elena.r@example.com\",\"phone\":2025550122,\"country_code\":\"1\"}', '₨', 'USD', NULL, NULL, 7168, NULL, 0, '[{\"name\":\"Faisal Mosque, Islamabad, Pakistan\",\"lat\":33.7299,\"lng\":73.0373},{\"name\":\"Centaurus Mall, Islamabad, Pakistan\",\"lat\":33.7077,\"lng\":73.0501}]', '[{\"lat\":40.8101,\"lng\":-73.9501},{\"lat\":40.7736,\"lng\":-73.9566}]', '18 mins', NULL, '4.2', 'km', 'wallet', 'offline', 'PENDING', 66, 0.0000, 5.2800, 2.5000, 5.0000, NULL, NULL, NULL, 10, 56, NULL, NULL, NULL, 9.9, 56.1, 2.5, 0, 0, NULL, NULL, 78.78, 78.78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INV-100029', NULL, NULL, NULL, '2026-04-16 15:40:48', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2026-04-16 15:31:48', '2026-05-23 06:12:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ride_bids`
--

CREATE TABLE `ride_bids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ride_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bid_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ride_preferences`
--

CREATE TABLE `ride_preferences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ride_id` bigint(20) UNSIGNED DEFAULT NULL,
  `preference_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ride_requests`
--

CREATE TABLE `ride_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ride_number` int(11) DEFAULT NULL,
  `ambulance_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vehicle_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hourly_package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cargo_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rider` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`rider`)),
  `currency_code` varchar(255) DEFAULT NULL,
  `currency_symbol` longtext DEFAULT NULL,
  `locations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`locations`)),
  `location_coordinates` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`location_coordinates`)),
  `parcel_receiver` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`parcel_receiver`)),
  `parcel_delivered_otp` int(11) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `distance_unit` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `ride_fare` double DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `base_fare_charge` double DEFAULT NULL,
  `additional_distance_charge` double DEFAULT NULL,
  `additional_minute_charge` double DEFAULT NULL,
  `additional_weight_charge` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `commission` double DEFAULT NULL,
  `driver_commission` double DEFAULT NULL,
  `platform_fee` double DEFAULT NULL,
  `is_peak_zone` int(11) NOT NULL DEFAULT 0,
  `preference_charge` double DEFAULT NULL,
  `peak_zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `peak_zone_charge` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `no_of_days` double DEFAULT NULL,
  `driver_per_day_charge` double DEFAULT NULL,
  `vehicle_per_day_charge` double DEFAULT NULL,
  `driver_rent` double DEFAULT NULL,
  `vehicle_rent` double DEFAULT NULL,
  `is_with_driver` int(11) NOT NULL DEFAULT 0,
  `rental_vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ride_request_drivers`
--

CREATE TABLE `ride_request_drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ride_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ride_request_preferences`
--

CREATE TABLE `ride_request_preferences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ride_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `preference_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ride_request_zones`
--

CREATE TABLE `ride_request_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ride_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ride_status`
--

CREATE TABLE `ride_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `system_reserve` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ride_status`
--

INSERT INTO `ride_status` (`id`, `name`, `slug`, `color`, `sequence`, `created_by_id`, `status`, `system_reserve`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Requested', 'requested', NULL, 1, NULL, 1, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL),
(2, 'Scheduled', 'scheduled', NULL, 2, NULL, 1, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL),
(3, 'Accepted', 'accepted', NULL, 3, NULL, 1, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL),
(4, 'Rejected', 'rejected', NULL, 4, NULL, 1, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL),
(5, 'Arrived', 'arrived', NULL, 5, NULL, 1, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL),
(6, 'Started', 'started', NULL, 6, NULL, 1, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL),
(7, 'Cancelled', 'cancelled', NULL, 7, NULL, 1, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL),
(8, 'Completed', 'completed', NULL, 8, NULL, 1, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ride_status_activities`
--

CREATE TABLE `ride_status_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `ride_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ride_id` bigint(20) UNSIGNED DEFAULT NULL,
  `changed_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ride_status_activities`
--

INSERT INTO `ride_status_activities` (`id`, `status`, `ride_request_id`, `ride_id`, `changed_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'requested', NULL, 1, '2026-05-01 14:08:48', '2026-05-01 09:08:48', '2026-05-01 09:08:48', NULL),
(2, 'accepted', NULL, 1, '2026-05-01 14:09:48', '2026-05-01 09:09:48', '2026-05-01 09:09:48', NULL),
(3, 'arrived', NULL, 1, '2026-05-01 14:14:48', '2026-05-01 09:14:48', '2026-05-01 09:14:48', NULL),
(4, 'started', NULL, 1, '2026-05-01 14:15:48', '2026-05-01 09:15:48', '2026-05-01 09:15:48', NULL),
(5, 'completed', NULL, 1, '2026-05-01 14:20:48', '2026-05-01 09:20:48', '2026-05-01 09:20:48', NULL),
(6, 'requested', NULL, 2, '2026-04-30 15:50:48', '2026-04-30 10:50:48', '2026-04-30 10:50:48', NULL),
(7, 'accepted', NULL, 2, '2026-04-30 15:53:48', '2026-04-30 10:53:48', '2026-04-30 10:53:48', NULL),
(8, 'arrived', NULL, 2, '2026-04-30 15:58:48', '2026-04-30 10:58:48', '2026-04-30 10:58:48', NULL),
(9, 'started', NULL, 2, '2026-04-30 16:00:48', '2026-04-30 11:00:48', '2026-04-30 11:00:48', NULL),
(10, 'completed', NULL, 2, '2026-04-30 16:03:48', '2026-04-30 11:03:48', '2026-04-30 11:03:48', NULL),
(11, 'requested', NULL, 3, '2026-05-07 08:03:48', '2026-05-07 03:03:48', '2026-05-07 03:03:48', NULL),
(12, 'accepted', NULL, 3, '2026-05-07 08:07:48', '2026-05-07 03:07:48', '2026-05-07 03:07:48', NULL),
(13, 'arrived', NULL, 3, '2026-05-07 08:12:48', '2026-05-07 03:12:48', '2026-05-07 03:12:48', NULL),
(14, 'started', NULL, 3, '2026-05-07 08:16:48', '2026-05-07 03:16:48', '2026-05-07 03:16:48', NULL),
(15, 'completed', NULL, 3, '2026-05-07 08:20:48', '2026-05-07 03:20:48', '2026-05-07 03:20:48', NULL),
(16, 'requested', NULL, 4, '2026-05-20 18:02:48', '2026-05-20 13:02:48', '2026-05-20 13:02:48', NULL),
(17, 'accepted', NULL, 4, '2026-05-20 18:06:48', '2026-05-20 13:06:48', '2026-05-20 13:06:48', NULL),
(18, 'arrived', NULL, 4, '2026-05-20 18:10:48', '2026-05-20 13:10:48', '2026-05-20 13:10:48', NULL),
(19, 'started', NULL, 4, '2026-05-20 18:15:48', '2026-05-20 13:15:48', '2026-05-20 13:15:48', NULL),
(20, 'completed', NULL, 4, '2026-05-20 18:18:48', '2026-05-20 13:18:48', '2026-05-20 13:18:48', NULL),
(21, 'requested', NULL, 5, '2026-05-02 01:52:48', '2026-05-01 20:52:48', '2026-05-01 20:52:48', NULL),
(22, 'accepted', NULL, 5, '2026-05-02 01:53:48', '2026-05-01 20:53:48', '2026-05-01 20:53:48', NULL),
(23, 'arrived', NULL, 5, '2026-05-02 01:58:48', '2026-05-01 20:58:48', '2026-05-01 20:58:48', NULL),
(24, 'started', NULL, 5, '2026-05-02 01:59:48', '2026-05-01 20:59:48', '2026-05-01 20:59:48', NULL),
(25, 'completed', NULL, 5, '2026-05-02 02:03:48', '2026-05-01 21:03:48', '2026-05-01 21:03:48', NULL),
(26, 'requested', NULL, 6, '2026-05-07 12:37:48', '2026-05-07 07:37:48', '2026-05-07 07:37:48', NULL),
(27, 'accepted', NULL, 6, '2026-05-07 12:39:48', '2026-05-07 07:39:48', '2026-05-07 07:39:48', NULL),
(28, 'arrived', NULL, 6, '2026-05-07 12:42:48', '2026-05-07 07:42:48', '2026-05-07 07:42:48', NULL),
(29, 'started', NULL, 6, '2026-05-07 12:46:48', '2026-05-07 07:46:48', '2026-05-07 07:46:48', NULL),
(30, 'completed', NULL, 6, '2026-05-07 12:51:48', '2026-05-07 07:51:48', '2026-05-07 07:51:48', NULL),
(31, 'requested', NULL, 7, '2026-05-10 13:11:48', '2026-05-10 08:11:48', '2026-05-10 08:11:48', NULL),
(32, 'accepted', NULL, 7, '2026-05-10 13:13:48', '2026-05-10 08:13:48', '2026-05-10 08:13:48', NULL),
(33, 'arrived', NULL, 7, '2026-05-10 13:15:48', '2026-05-10 08:15:48', '2026-05-10 08:15:48', NULL),
(34, 'started', NULL, 7, '2026-05-10 13:20:48', '2026-05-10 08:20:48', '2026-05-10 08:20:48', NULL),
(35, 'completed', NULL, 7, '2026-05-10 13:22:48', '2026-05-10 08:22:48', '2026-05-10 08:22:48', NULL),
(36, 'requested', NULL, 8, '2026-05-03 06:52:48', '2026-05-03 01:52:48', '2026-05-03 01:52:48', NULL),
(37, 'accepted', NULL, 8, '2026-05-03 06:54:48', '2026-05-03 01:54:48', '2026-05-03 01:54:48', NULL),
(38, 'arrived', NULL, 8, '2026-05-03 06:55:48', '2026-05-03 01:55:48', '2026-05-03 01:55:48', NULL),
(39, 'started', NULL, 8, '2026-05-03 06:57:48', '2026-05-03 01:57:48', '2026-05-03 01:57:48', NULL),
(40, 'completed', NULL, 8, '2026-05-03 07:01:48', '2026-05-03 02:01:48', '2026-05-03 02:01:48', NULL),
(41, 'requested', NULL, 9, '2026-05-13 00:48:48', '2026-05-12 19:48:48', '2026-05-12 19:48:48', NULL),
(42, 'accepted', NULL, 9, '2026-05-13 00:52:48', '2026-05-12 19:52:48', '2026-05-12 19:52:48', NULL),
(43, 'arrived', NULL, 9, '2026-05-13 00:56:48', '2026-05-12 19:56:48', '2026-05-12 19:56:48', NULL),
(44, 'started', NULL, 9, '2026-05-13 01:01:48', '2026-05-12 20:01:48', '2026-05-12 20:01:48', NULL),
(45, 'completed', NULL, 9, '2026-05-13 01:03:48', '2026-05-12 20:03:48', '2026-05-12 20:03:48', NULL),
(46, 'requested', NULL, 10, '2026-05-11 02:37:48', '2026-05-10 21:37:48', '2026-05-10 21:37:48', NULL),
(47, 'accepted', NULL, 10, '2026-05-11 02:39:48', '2026-05-10 21:39:48', '2026-05-10 21:39:48', NULL),
(48, 'arrived', NULL, 10, '2026-05-11 02:42:48', '2026-05-10 21:42:48', '2026-05-10 21:42:48', NULL),
(49, 'started', NULL, 10, '2026-05-11 02:43:48', '2026-05-10 21:43:48', '2026-05-10 21:43:48', NULL),
(50, 'completed', NULL, 10, '2026-05-11 02:46:48', '2026-05-10 21:46:48', '2026-05-10 21:46:48', NULL),
(51, 'requested', NULL, 11, '2026-05-12 19:25:48', '2026-05-12 14:25:48', '2026-05-12 14:25:48', NULL),
(52, 'accepted', NULL, 11, '2026-05-12 19:27:48', '2026-05-12 14:27:48', '2026-05-12 14:27:48', NULL),
(53, 'arrived', NULL, 11, '2026-05-12 19:28:48', '2026-05-12 14:28:48', '2026-05-12 14:28:48', NULL),
(54, 'started', NULL, 11, '2026-05-12 19:31:48', '2026-05-12 14:31:48', '2026-05-12 14:31:48', NULL),
(55, 'completed', NULL, 11, '2026-05-12 19:36:48', '2026-05-12 14:36:48', '2026-05-12 14:36:48', NULL),
(56, 'requested', NULL, 12, '2026-05-10 07:26:48', '2026-05-10 02:26:48', '2026-05-10 02:26:48', NULL),
(57, 'accepted', NULL, 12, '2026-05-10 07:29:48', '2026-05-10 02:29:48', '2026-05-10 02:29:48', NULL),
(58, 'arrived', NULL, 12, '2026-05-10 07:31:48', '2026-05-10 02:31:48', '2026-05-10 02:31:48', NULL),
(59, 'started', NULL, 12, '2026-05-10 07:34:48', '2026-05-10 02:34:48', '2026-05-10 02:34:48', NULL),
(60, 'completed', NULL, 12, '2026-05-10 07:37:48', '2026-05-10 02:37:48', '2026-05-10 02:37:48', NULL),
(61, 'requested', NULL, 13, '2026-05-03 14:54:48', '2026-05-03 09:54:48', '2026-05-03 09:54:48', NULL),
(62, 'accepted', NULL, 13, '2026-05-03 14:57:48', '2026-05-03 09:57:48', '2026-05-03 09:57:48', NULL),
(63, 'arrived', NULL, 13, '2026-05-03 15:02:48', '2026-05-03 10:02:48', '2026-05-03 10:02:48', NULL),
(64, 'started', NULL, 13, '2026-05-03 15:04:48', '2026-05-03 10:04:48', '2026-05-03 10:04:48', NULL),
(65, 'completed', NULL, 13, '2026-05-03 15:06:48', '2026-05-03 10:06:48', '2026-05-03 10:06:48', NULL),
(66, 'requested', NULL, 14, '2026-05-05 22:43:48', '2026-05-05 17:43:48', '2026-05-05 17:43:48', NULL),
(67, 'accepted', NULL, 14, '2026-05-05 22:47:48', '2026-05-05 17:47:48', '2026-05-05 17:47:48', NULL),
(68, 'arrived', NULL, 14, '2026-05-05 22:51:48', '2026-05-05 17:51:48', '2026-05-05 17:51:48', NULL),
(69, 'started', NULL, 14, '2026-05-05 22:56:48', '2026-05-05 17:56:48', '2026-05-05 17:56:48', NULL),
(70, 'completed', NULL, 14, '2026-05-05 22:57:48', '2026-05-05 17:57:48', '2026-05-05 17:57:48', NULL),
(71, 'requested', NULL, 15, '2026-05-22 09:16:48', '2026-05-22 04:16:48', '2026-05-22 04:16:48', NULL),
(72, 'accepted', NULL, 15, '2026-05-22 09:17:48', '2026-05-22 04:17:48', '2026-05-22 04:17:48', NULL),
(73, 'arrived', NULL, 15, '2026-05-22 09:19:48', '2026-05-22 04:19:48', '2026-05-22 04:19:48', NULL),
(74, 'started', NULL, 15, '2026-05-22 09:24:48', '2026-05-22 04:24:48', '2026-05-22 04:24:48', NULL),
(75, 'completed', NULL, 15, '2026-05-22 09:28:48', '2026-05-22 04:28:48', '2026-05-22 04:28:48', NULL),
(76, 'requested', NULL, 16, '2026-05-03 03:46:48', '2026-05-02 22:46:48', '2026-05-02 22:46:48', NULL),
(77, 'accepted', NULL, 16, '2026-05-03 03:51:48', '2026-05-02 22:51:48', '2026-05-02 22:51:48', NULL),
(78, 'arrived', NULL, 16, '2026-05-03 03:53:48', '2026-05-02 22:53:48', '2026-05-02 22:53:48', NULL),
(79, 'started', NULL, 16, '2026-05-03 03:56:48', '2026-05-02 22:56:48', '2026-05-02 22:56:48', NULL),
(80, 'completed', NULL, 16, '2026-05-03 04:01:48', '2026-05-02 23:01:48', '2026-05-02 23:01:48', NULL),
(81, 'requested', NULL, 17, '2026-05-02 05:46:48', '2026-05-02 00:46:48', '2026-05-02 00:46:48', NULL),
(82, 'accepted', NULL, 17, '2026-05-02 05:50:48', '2026-05-02 00:50:48', '2026-05-02 00:50:48', NULL),
(83, 'arrived', NULL, 17, '2026-05-02 05:53:48', '2026-05-02 00:53:48', '2026-05-02 00:53:48', NULL),
(84, 'started', NULL, 17, '2026-05-02 05:55:48', '2026-05-02 00:55:48', '2026-05-02 00:55:48', NULL),
(85, 'completed', NULL, 17, '2026-05-02 06:00:48', '2026-05-02 01:00:48', '2026-05-02 01:00:48', NULL),
(86, 'requested', NULL, 18, '2026-05-01 14:20:48', '2026-05-01 09:20:48', '2026-05-01 09:20:48', NULL),
(87, 'accepted', NULL, 18, '2026-05-01 14:21:48', '2026-05-01 09:21:48', '2026-05-01 09:21:48', NULL),
(88, 'arrived', NULL, 18, '2026-05-01 14:22:48', '2026-05-01 09:22:48', '2026-05-01 09:22:48', NULL),
(89, 'started', NULL, 18, '2026-05-01 14:24:48', '2026-05-01 09:24:48', '2026-05-01 09:24:48', NULL),
(90, 'completed', NULL, 18, '2026-05-01 14:27:48', '2026-05-01 09:27:48', '2026-05-01 09:27:48', NULL),
(91, 'requested', NULL, 19, '2026-05-09 04:20:48', '2026-05-08 23:20:48', '2026-05-08 23:20:48', NULL),
(92, 'accepted', NULL, 19, '2026-05-09 04:23:48', '2026-05-08 23:23:48', '2026-05-08 23:23:48', NULL),
(93, 'arrived', NULL, 19, '2026-05-09 04:25:48', '2026-05-08 23:25:48', '2026-05-08 23:25:48', NULL),
(94, 'started', NULL, 19, '2026-05-09 04:30:48', '2026-05-08 23:30:48', '2026-05-08 23:30:48', NULL),
(95, 'completed', NULL, 19, '2026-05-09 04:35:48', '2026-05-08 23:35:48', '2026-05-08 23:35:48', NULL),
(96, 'requested', NULL, 20, '2026-05-02 00:50:48', '2026-05-01 19:50:48', '2026-05-01 19:50:48', NULL),
(97, 'accepted', NULL, 20, '2026-05-02 00:54:48', '2026-05-01 19:54:48', '2026-05-01 19:54:48', NULL),
(98, 'arrived', NULL, 20, '2026-05-02 00:59:48', '2026-05-01 19:59:48', '2026-05-01 19:59:48', NULL),
(99, 'started', NULL, 20, '2026-05-02 01:03:48', '2026-05-01 20:03:48', '2026-05-01 20:03:48', NULL),
(100, 'completed', NULL, 20, '2026-05-02 01:07:48', '2026-05-01 20:07:48', '2026-05-01 20:07:48', NULL),
(101, 'requested', NULL, 21, '2026-03-09 22:31:48', '2026-03-09 17:31:48', '2026-03-09 17:31:48', NULL),
(102, 'accepted', NULL, 21, '2026-03-09 22:34:48', '2026-03-09 17:34:48', '2026-03-09 17:34:48', NULL),
(103, 'cancelled', NULL, 21, '2026-03-09 22:35:48', '2026-03-09 17:35:48', '2026-03-09 17:35:48', NULL),
(104, 'requested', NULL, 22, '2026-04-15 03:31:48', '2026-04-14 22:31:48', '2026-04-14 22:31:48', NULL),
(105, 'accepted', NULL, 22, '2026-04-15 03:36:48', '2026-04-14 22:36:48', '2026-04-14 22:36:48', NULL),
(106, 'cancelled', NULL, 22, '2026-04-15 03:38:48', '2026-04-14 22:38:48', '2026-04-14 22:38:48', NULL),
(107, 'requested', NULL, 23, '2026-03-07 07:31:48', '2026-03-07 02:31:48', '2026-03-07 02:31:48', NULL),
(108, 'accepted', NULL, 23, '2026-03-07 07:34:48', '2026-03-07 02:34:48', '2026-03-07 02:34:48', NULL),
(109, 'cancelled', NULL, 23, '2026-03-07 07:35:48', '2026-03-07 02:35:48', '2026-03-07 02:35:48', NULL),
(110, 'requested', NULL, 24, '2026-04-15 17:31:48', '2026-04-15 12:31:48', '2026-04-15 12:31:48', NULL),
(111, 'accepted', NULL, 24, '2026-04-15 17:32:48', '2026-04-15 12:32:48', '2026-04-15 12:32:48', NULL),
(112, 'cancelled', NULL, 24, '2026-04-15 17:33:48', '2026-04-15 12:33:48', '2026-04-15 12:33:48', NULL),
(113, 'requested', NULL, 25, '2026-03-10 12:31:48', '2026-03-10 07:31:48', '2026-03-10 07:31:48', NULL),
(114, 'accepted', NULL, 25, '2026-03-10 12:32:48', '2026-03-10 07:32:48', '2026-03-10 07:32:48', NULL),
(115, 'cancelled', NULL, 25, '2026-03-10 12:36:48', '2026-03-10 07:36:48', '2026-03-10 07:36:48', NULL),
(116, 'requested', NULL, 26, '2026-04-20 04:31:48', '2026-04-19 23:31:48', '2026-04-19 23:31:48', NULL),
(117, 'requested', NULL, 27, '2026-03-07 14:31:48', '2026-03-07 09:31:48', '2026-03-07 09:31:48', NULL),
(118, 'accepted', NULL, 27, '2026-03-07 14:35:48', '2026-03-07 09:35:48', '2026-03-07 09:35:48', NULL),
(119, 'requested', NULL, 28, '2026-02-24 02:31:48', '2026-02-23 21:31:48', '2026-02-23 21:31:48', NULL),
(120, 'accepted', NULL, 28, '2026-02-24 02:34:48', '2026-02-23 21:34:48', '2026-02-23 21:34:48', NULL),
(121, 'arrived', NULL, 28, '2026-02-24 02:37:48', '2026-02-23 21:37:48', '2026-02-23 21:37:48', NULL),
(122, 'started', NULL, 28, '2026-02-24 02:41:48', '2026-02-23 21:41:48', '2026-02-23 21:41:48', NULL),
(123, 'requested', NULL, 29, '2026-03-21 18:31:48', '2026-03-21 13:31:48', '2026-03-21 13:31:48', NULL),
(124, 'accepted', NULL, 29, '2026-03-21 18:36:48', '2026-03-21 13:36:48', '2026-03-21 13:36:48', NULL),
(125, 'arrived', NULL, 29, '2026-03-21 18:40:48', '2026-03-21 13:40:48', '2026-03-21 13:40:48', NULL),
(126, 'started', NULL, 29, '2026-03-21 18:42:48', '2026-03-21 13:42:48', '2026-03-21 13:42:48', NULL),
(127, 'requested', NULL, 30, '2026-04-16 20:31:48', '2026-04-16 15:31:48', '2026-04-16 15:31:48', NULL),
(128, 'accepted', NULL, 30, '2026-04-16 20:32:48', '2026-04-16 15:32:48', '2026-04-16 15:32:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ride_zones`
--

CREATE TABLE `ride_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ride_id` bigint(20) UNSIGNED DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ride_zones`
--

INSERT INTO `ride_zones` (`id`, `ride_id`, `zone_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 1),
(30, 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `system_reserve` int(11) NOT NULL DEFAULT 0,
  `module` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `system_reserve`, `module`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', 1, NULL, 1, '2026-05-23 05:31:29', '2026-05-23 05:31:29'),
(2, 'user', 'web', 1, NULL, 1, '2026-05-23 05:31:30', '2026-05-23 05:31:30'),
(3, 'rider', 'web', 1, 13, 1, '2026-05-23 05:31:34', '2026-05-23 05:31:34'),
(4, 'driver', 'web', 1, 13, 1, '2026-05-23 05:31:35', '2026-05-23 05:31:35'),
(5, 'dispatcher', 'web', 1, 13, 1, '2026-05-23 05:31:35', '2026-05-23 05:31:35'),
(6, 'fleet_manager', 'web', 1, 13, 1, '2026-05-23 05:31:36', '2026-05-23 05:31:36'),
(7, 'executive', 'web', 1, 14, 1, '2026-05-23 05:31:51', '2026-05-23 05:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 2),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 2),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 2),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(33, 2),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(39, 2),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(45, 2),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(51, 2),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(57, 2),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(102, 2),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(108, 3),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(114, 4),
(114, 5),
(114, 6),
(115, 1),
(116, 1),
(116, 4),
(116, 5),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(120, 3),
(120, 5),
(121, 1),
(122, 1),
(122, 5),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(126, 5),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(132, 3),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(138, 3),
(138, 4),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(144, 3),
(144, 4),
(144, 5),
(144, 6),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(150, 3),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(156, 5),
(156, 6),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(168, 4),
(168, 5),
(168, 6),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(174, 3),
(174, 4),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(180, 4),
(180, 6),
(181, 1),
(181, 4),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(186, 4),
(186, 6),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(192, 4),
(192, 6),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(198, 4),
(198, 6),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(205, 4),
(206, 1),
(207, 1),
(208, 1),
(208, 3),
(208, 4),
(208, 5),
(208, 6),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(212, 3),
(212, 4),
(212, 5),
(212, 6),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(216, 3),
(216, 4),
(216, 5),
(216, 6),
(217, 1),
(217, 3),
(218, 1),
(218, 3),
(218, 4),
(218, 5),
(219, 1),
(219, 3),
(219, 5),
(220, 1),
(220, 5),
(221, 1),
(222, 1),
(222, 3),
(222, 4),
(222, 5),
(222, 6),
(223, 1),
(223, 3),
(224, 1),
(224, 3),
(224, 4),
(224, 5),
(225, 1),
(225, 4),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(231, 4),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(237, 4),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(243, 4),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(247, 4),
(248, 1),
(248, 4),
(249, 1),
(249, 3),
(249, 4),
(250, 1),
(250, 4),
(251, 1),
(251, 3),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(256, 3),
(257, 1),
(258, 1),
(259, 1),
(259, 4),
(259, 6),
(260, 1),
(260, 4),
(260, 6),
(261, 1),
(262, 1),
(262, 6),
(263, 1),
(263, 6),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(267, 5),
(267, 6),
(268, 1),
(269, 1),
(269, 3),
(269, 5),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(275, 3),
(275, 4),
(276, 1),
(276, 3),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(280, 3),
(280, 4),
(281, 1),
(281, 4),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(285, 3),
(285, 4),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(291, 3),
(291, 4),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(297, 3),
(297, 4),
(298, 1),
(298, 4),
(299, 1),
(299, 4),
(300, 1),
(300, 4),
(301, 1),
(301, 4),
(302, 1),
(302, 4),
(303, 1),
(303, 4),
(303, 6),
(304, 1),
(304, 6),
(305, 1),
(305, 6),
(306, 1),
(306, 6),
(307, 1),
(307, 6),
(308, 1),
(308, 6),
(309, 1),
(309, 6),
(310, 1),
(311, 1),
(312, 1),
(312, 3),
(312, 4),
(313, 1),
(313, 3),
(313, 4),
(314, 1),
(314, 3),
(314, 4),
(315, 1),
(315, 3),
(315, 4),
(316, 1),
(316, 3),
(316, 4),
(316, 5),
(316, 6),
(317, 1),
(317, 4),
(317, 6),
(318, 1),
(318, 4),
(318, 6),
(319, 1),
(319, 6),
(320, 1),
(320, 6),
(321, 1),
(321, 6),
(322, 1),
(322, 6),
(323, 1),
(323, 4),
(323, 6),
(324, 1),
(324, 4),
(324, 6),
(325, 1),
(325, 6),
(326, 1),
(326, 6),
(327, 1),
(327, 6),
(328, 1),
(328, 6),
(329, 1),
(329, 4),
(329, 6),
(330, 1),
(330, 6),
(331, 1),
(331, 6),
(332, 1),
(332, 6),
(333, 1),
(333, 6),
(334, 1),
(334, 6),
(335, 1),
(335, 4),
(335, 5),
(335, 6),
(336, 1),
(337, 1),
(338, 1),
(339, 1),
(340, 1),
(341, 1),
(341, 4),
(341, 6),
(342, 1),
(343, 1),
(344, 1),
(345, 1),
(346, 1),
(347, 1),
(347, 3),
(348, 1),
(349, 1),
(350, 1),
(351, 1),
(352, 1),
(353, 1),
(353, 2),
(353, 7),
(354, 1),
(354, 2),
(354, 7),
(355, 1),
(355, 2),
(355, 7),
(356, 1),
(356, 2),
(357, 1),
(357, 2),
(358, 1),
(358, 2),
(359, 1),
(360, 1),
(361, 1),
(362, 1),
(363, 1),
(364, 1),
(365, 1),
(366, 1),
(367, 1),
(368, 1),
(369, 1),
(370, 1),
(371, 1),
(372, 1),
(373, 1),
(374, 1),
(375, 1),
(376, 1),
(377, 1),
(378, 1),
(379, 1),
(380, 1),
(381, 1),
(382, 1),
(383, 1),
(384, 1),
(385, 1),
(386, 1),
(387, 1),
(388, 1),
(389, 1),
(390, 1),
(390, 2),
(391, 1),
(392, 1),
(393, 1),
(394, 1),
(395, 1),
(396, 1),
(396, 2),
(397, 1),
(398, 1),
(399, 1),
(400, 1),
(400, 2),
(401, 1),
(402, 1),
(403, 1),
(404, 1),
(405, 1),
(406, 1),
(407, 1),
(408, 1),
(409, 1),
(410, 1),
(411, 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `service_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_icon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('cab','parcel','freight','ambulance') DEFAULT 'cab',
  `status` int(11) DEFAULT 1,
  `is_primary` int(11) DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `slug`, `description`, `service_image_id`, `service_icon_id`, `type`, `status`, `is_primary`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"Cab\"}', 'cab', '{\"en\":\"Quick and reliable ride service.\"}', 6, NULL, 'cab', 1, 1, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL),
(2, '{\"en\":\"Parcel\"}', 'parcel', '{\"en\":\"Secure and fast deliveries.\"}', 13, 15, 'parcel', 1, 0, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL),
(3, '{\"en\":\"Freight\"}', 'freight', '{\"en\":\"Efficient and reliable goods transport.\"}', 14, 10, 'freight', 1, 0, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL),
(4, '{\"en\":\"Ambulance\"}', 'ambulance', '{\"en\":\"Emergency medical transport.\"}', 7, 7, 'ambulance', 1, 0, 1, '2026-05-23 05:31:39', '2026-05-23 05:31:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `type` enum('ride','intercity','rental','schedule','package') DEFAULT 'ride',
  `service_category_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`id`, `name`, `slug`, `description`, `type`, `service_category_image_id`, `service_id`, `status`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"Ride\"}', 'ride', '{\"en\":\"Long-distance travel options connecting cities, ideal for both passengers and freight shipments.\"}', 'ride', 23, 1, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(2, '{\"en\":\"Intercity\"}', 'intercity', '{\"en\":\"For smooth and reliable intracity travel\"}', 'intercity', 18, 1, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(3, '{\"en\":\"Package\"}', 'package', '{\"en\":\"Package delivery services for both small and large parcels, ensuring timely and secure transport.\"}', 'package', 21, 1, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(4, '{\"en\":\"Schedule\"}', 'schedule', '{\"en\":\"Scheduled transport services for planned trips, offering both passenger and freight options.\"}', 'schedule', 26, 1, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(5, '{\"en\":\"Rental\"}', 'rental', '{\"en\":\"Vehicle rentals for short or long-term use, suitable for personal or business requirements.\"}', 'rental', 22, 1, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(6, '{\"en\":\"Ride\"}', 'ride-parcel', '{\"en\":\"Long-distance travel options connecting cities, ideal for both passengers and freight shipments.\"}', 'ride', 25, 2, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(7, '{\"en\":\"Intercity\"}', 'intercity-parcel', '{\"en\":\"For smooth and reliable intracity travel\"}', 'intercity', 20, 2, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(8, '{\"en\":\"Schedule\"}', 'schedule-parcel', '{\"en\":\"Scheduled transport services for planned trips, offering both passenger and freight options.\"}', 'schedule', 28, 2, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(9, '{\"en\":\"Ride\"}', 'ride-freight', '{\"en\":\"Long-distance travel options connecting cities, ideal for both passengers and freight shipments.\"}', 'ride', 24, 3, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(10, '{\"en\":\"Intercity\"}', 'intercity-freight', '{\"en\":\"For smooth and reliable intracity travel\"}', 'intercity', 19, 3, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(11, '{\"en\":\"Schedule\"}', 'schedule-freight', '{\"en\":\"Scheduled transport services for planned trips, offering both passenger and freight options.\"}', 'schedule', 27, 3, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`values`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `values`, `created_at`, `updated_at`) VALUES
(1, '{\"general\":{\"light_logo_image_id\":\"31\",\"dark_logo_image_id\":\"31\",\"favicon_image_id\":\"31\",\"site_name\":\"Livo Ride\",\"default_timezone\":\"UTC\",\"time_format\":\"12\",\"default_sms_gateway\":\"twilio\",\"default_language_id\":\"1\",\"default_currency_id\":\"6\",\"platform_fees\":\"10\",\"mode\":\"light\",\"copyright\":\"Livo Ride\",\"frontend_enable\":\"0\",\"external_frontend_enable\":\"1\",\"external_frontend_url\":\"https:\\/\\/coheser.com\\/\"},\"appearance\":{\"primary_color\":\"#e5ac25\",\"secondary_color\":\"#115444\",\"sidebar_background_type\":\"gradient\",\"sidebar_solid_color\":\"#1e1e1e\",\"sidebar_gradient_color_1\":\"#242424\",\"sidebar_gradient_color_2\":\"#0c0c0c\",\"font_family\":\"Inter\",\"front_font_family\":\"DM Sans\",\"preloader_image_id\":\"\"},\"activation\":{\"platform_fees\":\"1\",\"social_login_enable\":\"1\",\"default_credentials\":\"1\",\"demo_mode\":\"1\",\"preloader_enabled\":\"1\"},\"email\":{\"mail_mailer\":\"smtp\",\"mail_host\":\"ENTER_YOUR_HOST\",\"mail_port\":\"465\",\"mail_encryption\":\"ssl\",\"mail_username\":\"ENTER_YOUR_USERNAME\",\"mail_password\":\"ENTER_YOUR_PASSWORD\",\"mail_from_name\":\"no-reply\",\"mail_from_address\":\"ENTER_YOUR_EMAIL@MAIL.COM\"},\"mail\":null,\"readings\":{\"status\":\"1\",\"home_page\":null},\"google_reCaptcha\":{\"secret\":\"ENTER_YOUR_SECRET_KEY\",\"site_key\":\"ENTER_YOUR_SITE_KEY\",\"status\":\"0\"},\"firebase\":{\"firebase_api_key\":null,\"firebase_auth_domain\":null,\"firebase_project_id\":null,\"firebase_storage_bucket\":null,\"firebase_messaging_sender_id\":null,\"firebase_app_id\":null,\"firebase_measurement_id\":null,\"service_json\":{\"type\":\"service_account\",\"project_id\":\"taxidowebiots\",\"private_key_id\":\"73b5c8bab1ff2db0f37f6d9c6fe7260f5780da41\",\"private_key\":\"-----BEGIN PRIVATE KEY-----\\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCaXZ25kSe3lyQH\\nY3HsTMKtDR6F9hgx5nASr7\\/LMFcKHmKkEMAcySRWPdjHyLYRh9A\\/3hv6Bb+FZkpj\\nQT4zzGJ5ZWpLf9CdGDEbcTqakmr4dlh048A8wtextRzEfAq77AWt+6IucF8qM3k\\/\\njUIWpbwtkG\\/YiZxrgdxoNGYYP4woVKk5S2SVpqh95LAlz1ozqRH7xHn+iWfVXzIZ\\nGru+Zx7WAeWbOjSq2hmsG1rRWBJL\\/urZQ6ngyNFU1ZkGeDHVFzbQ+TgtFxxWv1FK\\njLGPX+F\\/eWbe3KIzZffUFIQOkpK0W+WpbHwI\\/580gMV3WlDx\\/fI4cl2Adhkwujvs\\nXCaG6xQbAgMBAAECggEAJ4TT\\/k\\/lBSFSffm9jqtQI5F6QP1x0ESYaJBJ37Dud46z\\n3iDTrgronJOUzgDaa76DV\\/Z63xVdpL89SA\\/J5uTqSP3nqpB8TduFpurj\\/\\/KAJD\\/Y\\nAYTVEDkpkzs0tDC1ZsrT4WjMamsmUd1\\/qv907etcM6YInD0OqI9EaAESKh8KuMAe\\nESgsoY6AOP3cJ2hW\\/wfuNkTMvsOs8ifmh9R003GrXcmQdlh77ADZghwuHQ1SXTub\\nZxYBXb3hXx1sITsUQHazvRf+baMNZUz82eVcbg7UdkO0TIsy51wweTY1ALtWM4Ok\\nA7+YXi5eUbM0V\\/id43M\\/o4C9KwWJJ3CWFpQikXsTsQKBgQDH7bcMSvdj35oELiqn\\nNQRHdYox+gKQ7RmJ8FHp9iy2X4oQ\\/t65ky4ULrghXYR0HW6JLfyDRG3LVrgqMK0N\\nVX92JaTyPOuDbvJZNKjB7nc1Ic+3PaRYaKWEStHArczwFOwcHlvlsT+WCN6IrThN\\nRs9nd5AEy6wTp8+Sq1yCIDGWxQKBgQDFqJ6Z\\/0MPpmhggxg6KQwJ7xDTLZCEfFqk\\nOhJx5uOrNbqoNg2CCu9Y96ParlWvx\\/\\/oijUb33jZ6YEkB7MSvrdVcEjWQTLYKPox\\nE4HCt7c6rS911BFEOsKHaUzMu24pZlAWk0eTWwjeyE+ZW47l6ha5CPUiXE\\/krz+3\\nhIcGXS2tXwKBgEXrlQDvluWO5cZgfvpLSFvVd6dS0GLvCOd87KjuN2TwtNCM0kgE\\neTEFxc+lbRVO1cGUG6Os4tkiUvYuX9cx94nSUIWHWLZ2rrsT95EbXQVv9b0YCcoB\\njyFdKU5BelLcfla3J1yFSL+oCmuyaOZdxVtiLTQAJwYYwjeBRrEboTwhAoGAFPz9\\nsl5\\/kXbbGHxzIyHerGNdRv9MnDTULyIXeU7KGBEBfAEZWBivJ6RMGtluMdcr3lZm\\no0oMfB8mXlwO8Mudjg35Pf74Vimrv3BR1ApMA4gGRR26o6MVqulMhWTVosHBeVQ0\\nQnplK7rbcO5e8xzzQrynwvlIZoERY\\/xHli5ovkMCgYEAifxEkD1Wo+vMqTy5T1aY\\n780T0qxL5cILiIFhh70IFJJa4SAGPgRQXej91o\\/N7N8OB\\/O\\/JDQxeIWK3sACfcBT\\n7HqXG4dS5IxsQU9bDaKgqYpFruaf1CPLdbfzGb9xP2wh1qODsNUDzZn4Ve3fpoVn\\n25p45Hv+k4c0ZbPxYkADjnI=\\n-----END PRIVATE KEY-----\\n\",\"client_email\":\"firebase-adminsdk-fbsvc@taxidowebiots.iam.gserviceaccount.com\",\"client_id\":\"117147882667744471402\",\"auth_uri\":\"https:\\/\\/accounts.google.com\\/o\\/oauth2\\/auth\",\"token_uri\":\"https:\\/\\/oauth2.googleapis.com\\/token\",\"auth_provider_x509_cert_url\":\"https:\\/\\/www.googleapis.com\\/oauth2\\/v1\\/certs\",\"client_x509_cert_url\":\"https:\\/\\/www.googleapis.com\\/robot\\/v1\\/metadata\\/x509\\/firebase-adminsdk-fbsvc%40taxidowebiots.iam.gserviceaccount.com\",\"universe_domain\":\"googleapis.com\"}},\"social_login\":{\"google\":{\"client_id\":\"385954585063-alkuv99a6crlch8jd8i4tfefucpd98sv.apps.googleusercontent.com\",\"client_secret\":\"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\"},\"apple\":{\"client_id\":null,\"client_secret\":null}},\"maintenance\":{\"maintenance_mode\":\"0\",\"content\":null},\"undefined\":\"1\"}', '2026-05-23 05:31:31', '2026-05-23 07:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sos`
--

CREATE TABLE `sos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `sos_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT '0',
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sos_alerts`
--

CREATE TABLE `sos_alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_coordinates` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`location_coordinates`)),
  `ride_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sos_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sos_status_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sos_statuses`
--

CREATE TABLE `sos_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sos_statuses`
--

INSERT INTO `sos_statuses` (`id`, `name`, `slug`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Requested', 'requested', 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(2, 'Processing', 'processing', 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(3, 'Completed', 'completed', 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sos_status_activities`
--

CREATE TABLE `sos_status_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ride_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sos_alert_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `changed_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sos_zones`
--

CREATE TABLE `sos_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_o_s_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `system_reserve` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `slug`, `color`, `created_by_id`, `system_reserve`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"Open\"}', 'open', 'primary', 1, 1, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(2, '{\"en\":\"Pending\"}', 'pending', 'secondary', 1, 1, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(3, '{\"en\":\"Processing\"}', 'processing', 'dark', 1, 1, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(4, '{\"en\":\"Solved\"}', 'solved', 'info', 1, 1, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(5, '{\"en\":\"Hold\"}', 'hold', 'warning', 1, 1, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL),
(6, '{\"en\":\"Closed\"}', 'closed', 'danger', 1, 1, 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'amirfareed787898@gmail.com', '2026-05-23 06:45:08', '2026-05-23 06:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `surge_prices`
--

CREATE TABLE `surge_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'post',
  `description` longtext DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rate` decimal(8,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxido_settings`
--

CREATE TABLE `taxido_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxido_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`taxido_values`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxido_settings`
--

INSERT INTO `taxido_settings` (`id`, `taxido_values`, `created_at`, `updated_at`) VALUES
(1, '{\"general\":{\"footer_branding_hashtag\":\"#GoTaxido\",\"footer_branding_attribution\":\"\\u2764\\ufe0f Made by Pixelstrap\",\"greetings\":[\"Hello\",\"<p>\\ud83c\\udf08 Let\\u2019s make today productive and successful! \\ud83c\\udfc6<\\/p>\"]},\"ride\":{\"ride_request_time_driver\":30,\"rental_ambulance_request_time\":30,\"increase_amount_range\":10,\"weight_unit\":\"kg\",\"find_driver_time_limit\":3,\"schedule_ride_request_lead_time\":15,\"driver_max_online_hours\":12,\"bidding_request_time_limit\":10,\"min_intracity_radius\":30000,\"max_bidding_fare_driver\":10,\"parcel_weight_limit\":10,\"country_code\":1,\"distance_unit\":\"km\",\"schedule_min_hour_limit\":3,\"maximum_seat\":10},\"activation\":{\"bidding\":\"0\",\"coupon_enable\":\"1\",\"allow_negative_balance\":\"1\",\"driver_subscription\":\"1\",\"driver_verification\":\"1\",\"fleet_verification\":\"1\",\"fleet_vehicle_verification\":\"1\",\"online_payments\":\"1\",\"cash_payments\":\"1\",\"rider_wallet\":\"1\",\"ride_otp\":\"1\",\"parcel_otp\":\"1\",\"driver_tips\":\"1\",\"referral_enable\":\"1\",\"force_update\":\"1\",\"airport_price_enable\":\"1\",\"surge_price_enable\":\"1\",\"peak_zone_enable\":\"1\",\"driver_incentive_enable\":\"1\",\"additional_minute_charge\":\"1\",\"additional_distance_charge\":\"1\",\"additional_weight_charge\":\"1\",\"sos_enable\":\"1\",\"full_address_location\":\"1\"},\"wallet\":{\"wallet_denominations\":50,\"tip_denominations\":50,\"driver_min_wallet_balance\":10},\"driver_commission\":{\"min_withdraw_amount\":500,\"status\":\"0\",\"fleet_commission_type\":\"percentage\",\"fleet_commission_rate\":10,\"ambulance_per_km_charge\":1,\"ambulance_commission_type\":\"percentage\",\"ambulance_commission_rate\":20,\"ambulance_per_minute_rate\":10},\"referral\":{\"minimum_ride_amount\":\"100\",\"referrer_bonus_percentage\":10,\"referred_bonus_percentage\":5},\"location\":{\"google_map_api_key\":\"\",\"map_provider\":\"google_map\",\"radius_meter\":\"3000\",\"radius_per_second\":\"10\"},\"ads\":{\"native_enable\":\"1\",\"android_google_ads_id\":null,\"ios_google_ads_id\":null,\"native_ios_unit_id\":null,\"native_android_unit_id\":null},\"setting\":{\"driver_app_version\":\"2.0.2\",\"app_version\":\"2.0.2\",\"splash_screen_id\":null,\"splash_driver_screen_id\":null,\"rider_privacy_policy\":null,\"driver_privacy_policy\":null}}', '2026-05-23 05:31:39', '2026-05-23 05:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `profile_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `ticket_number` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `priority_id` bigint(20) UNSIGNED DEFAULT NULL,
  `other_input_field` varchar(255) DEFAULT NULL,
  `ticket_status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `note` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_settings`
--

CREATE TABLE `ticket_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`values`)),
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_settings`
--

INSERT INTO `ticket_settings` (`id`, `values`, `created_by_id`, `created_at`, `updated_at`) VALUES
(1, '{\"general\":{\"ticket_prefix\":\"ID\",\"ticket_suffix\":\"random\",\"ticket_priority\":1},\"activation\":{\"assign_notification_enable\":1,\"create_notification_enable\":1,\"replied_notification_enable\":1,\"status_notification_enable\":1,\"ticket_recaptcha_enable\":1},\"storage_configuration\":{\"supported_file_types\":[\"pdf\",\"csv\",\"doc\",\"jpeg\",\"jpg\",\"zip\",\"png\",\"docx\"],\"max_file_upload\":6,\"max_file_upload_size\":2000000},\"email\":{\"mail_host\":\"ENTER_YOUR_HOST\",\"mail_port\":465,\"mail_mailer\":\"smtp\",\"mail_username\":\"ENTER_YOUR_USERNAME\",\"mail_password\":\"ENTER_YOUR_PASSWORD\",\"mail_encryption\":\"ssl\",\"mail_from_name\":\"no-reply\",\"mail_from_address\":\"ENTER_YOUR_EMAIL@MAIL.COM\",\"mailgun_domain\":\"ENTER_YOUR_MAILGUN_DOMAIN\",\"mailgun_secret\":\"ENTER_YOUR_MAILGUN_SECRET\",\"system_test_mail\":true,\"password_reset_mail\":true},\"email_piping\":{\"mail_host\":\"ENTER_YOUR_HOST\",\"mail_port\":993,\"mail_username\":\"ENTER_YOUR_USERNAME\",\"mail_password\":\"ENTER_YOUR_PASSWORD\",\"mail_encryption\":\"ssl\",\"mail_protocol\":\"imap\"}}', 1, '2026-05-23 05:31:52', '2026-05-23 05:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT '0',
  `password` varchar(255) DEFAULT NULL,
  `profile_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `firebase_uid` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `fleet_manager_id` int(11) DEFAULT NULL,
  `referral_code` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `referred_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `system_reserve` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_online` int(11) DEFAULT NULL,
  `is_on_ride` int(11) DEFAULT NULL,
  `location` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`location`)),
  `can_accept_ride` int(11) DEFAULT 1,
  `can_accept_parcel` int(11) DEFAULT 1,
  `can_accept_ride_request` int(11) DEFAULT 1,
  `can_accept_parcel_request` int(11) DEFAULT 1,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_category_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `country_code`, `phone`, `password`, `profile_image_id`, `firebase_uid`, `is_verified`, `status`, `fleet_manager_id`, `referral_code`, `fcm_token`, `referred_by_id`, `created_by_id`, `system_reserve`, `remember_token`, `deleted_at`, `created_at`, `updated_at`, `is_online`, `is_on_ride`, `location`, `can_accept_ride`, `can_accept_parcel`, `can_accept_ride_request`, `can_accept_parcel_request`, `service_id`, `service_category_id`) VALUES
(1, 'Administrator', 'admin@example.com', '2026-05-23 05:31:29', NULL, '0', '$2y$12$nXzVp4IeQzaI3KcvxmmUnu9xMUvi52hmEE51.I40vjedD4hWPgACy', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, '7QrsVrrmxU', NULL, '2026-05-23 05:31:30', '2026-05-23 05:31:30', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(2, 'Joseph', 'joseph.user@example.com', '2026-05-23 05:31:31', NULL, '0', '$2y$12$/ls9s2bUk64VIUfv3tblceq/aecAD81IOtgx3mYDf.zUyMwoFiXa6', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 'UkTyFpPn2h', NULL, '2026-05-23 05:31:31', '2026-05-23 05:31:31', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(3, 'Muhammad Ali', 'rider@example.com', NULL, '92', '0123456789', '$2y$12$rK/W019l4Qqo23E3fHS9deozyS111pCFLb0mqFYVsTH.eet0aCIoS', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 3, 1, NULL, NULL, '2026-05-23 05:31:37', '2026-05-23 06:07:59', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(4, 'Kamran Khan', 'driver@example.com', NULL, '92', '1234567890', '$2y$12$0Ulk9POmnRcTHzLMWsHP8.7nGqebwmgyve9//mGpgJgi69jZrBcUW', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, '2026-05-23 05:31:37', '2026-05-23 06:07:59', 1, NULL, '{\"lat\":40.7128,\"lng\":-74.006}', 1, 1, 1, 1, 1, 1),
(5, 'Zaid Ahmed', 'dispatcher@example.com', NULL, '92', '9876543210', '$2y$12$DOwmT8mT6AVVf1DnS2dqaeKU7ZvHINDV3T1tNTnDNxM4syoxFYhMa', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2026-05-23 05:31:38', '2026-05-23 06:07:59', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(6, 'Tariq Malik', 'fleet@example.com', NULL, '92', '4321098765', '$2y$12$/RdCbdhtVgWD.4Gyo7gOG.mWzOFWf.Auh/2NCLgZisnDp53KmBIS.', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2026-05-23 05:31:39', '2026-05-23 06:07:59', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(7, 'Alexander Wright', 'alexander.w@example.com', NULL, '1', '2025550143', '$2y$12$TCg8l1QuEA7Ja8OC0xy/xeoM1xHrVB8AC6SUUTDKwnBcNftWiSsBu', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2026-05-23 05:31:41', '2026-05-23 05:31:41', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(8, 'Sophia Martinez', 'sophia.m@example.com', NULL, '1', '2025550189', '$2y$12$QD/hozGResoGTasXATKbie282p9iCDRjXXOGSknieHWtpGFxMB7RW', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2026-05-23 05:31:42', '2026-05-23 05:31:42', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(9, 'Marcus Vance', 'marcus.v@example.com', NULL, '1', '2025550167', '$2y$12$g6xRrEri6R5nKsrtfmITsu8LrkSTodMXUIm9vW97BLFpRi6URklQu', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2026-05-23 05:31:43', '2026-05-23 05:31:43', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(10, 'Elena Rostova', 'elena.r@example.com', NULL, '1', '2025550122', '$2y$12$nBojZKyZFNDHsluLsjO/YeV9S577JSX.C.tTwLTIespVBJ9OvIeEK', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2026-05-23 05:31:43', '2026-05-23 05:31:43', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(11, 'David Kim', 'david.k@example.com', NULL, '1', '2025550198', '$2y$12$H8BCJ0rSgUhDbvnztfe1T.7gz0vPQay57hrtuaiIvYiOd2qVemrLO', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2026-05-23 05:31:44', '2026-05-23 05:31:44', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL),
(12, 'Tariq Malik', 'carlos.m@example.com', NULL, '92', '3035550111', '$2y$12$lUyVtJADlWokaeC/OQ0wGe7P8SKCZsJIvlcXbpZiYvfVwe0bD3WV6', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2026-05-23 05:31:44', '2026-05-23 06:07:59', 1, NULL, '{\"lat\":40.7568,\"lng\":-73.916}', 1, 1, 1, 1, 1, 1),
(13, 'Sara Khan', 'sarah.j@example.com', NULL, '92', '3035550222', '$2y$12$47cMZJ2EZvENuJeR9y7zxecbGn0d0Kz4yJjUZuSPN4vvMzh8WqkIK', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2026-05-23 05:31:45', '2026-05-23 06:07:59', 1, NULL, '{\"lat\":40.8128,\"lng\":-74.098}', 1, 1, 1, 1, 1, 1),
(14, 'Danish Wahid', 'darnell.w@example.com', NULL, '92', '3035550333', '$2y$12$4AxrwPpHFiJdy8zCAE4TyeAXoLsOM82XBeyW8dA6KeQx/LjRgCnka', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2026-05-23 05:31:46', '2026-05-23 06:07:59', 1, NULL, '{\"lat\":40.7048,\"lng\":-73.968}', 1, 1, 1, 1, 1, 1),
(15, 'Yasmeen Bibi', 'yuki.t@example.com', NULL, '92', '3035550444', '$2y$12$JcZmbWP/03C8cBv82XeDTuImMHm7Ust3SotWYIOz1blCntCL5xuxK', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2026-05-23 05:31:47', '2026-05-23 06:07:59', 1, NULL, '{\"lat\":40.711800000000004,\"lng\":-73.968}', 1, 1, 1, 1, 1, 1),
(16, 'Mateen Ahmed', 'mateo.s@example.com', NULL, '92', '3035550555', '$2y$12$iFugNOlyD29GJi6KD3v72eDalr55k4K/vObWWwb0oZ4M9b42MfxSG', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2026-05-23 05:31:48', '2026-05-23 06:07:59', 1, NULL, '{\"lat\":40.7828,\"lng\":-74.049}', 1, 1, 1, 1, 1, 1),
(17, 'Smith Due', 'executive@example.com', NULL, '1', '78945622', '$2y$12$CB8ev74TIcsutHq9OWCTVOe0svJK55jSCrCR6me.Yjy6gLtFl.Ggu', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2026-05-23 05:31:52', '2026-05-23 05:31:52', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_type_id` bigint(20) UNSIGNED NOT NULL,
  `service_category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`id`, `vehicle_type_id`, `service_category_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 1),
(7, 2, 4),
(8, 3, 1),
(9, 3, 2),
(10, 3, 3),
(11, 3, 4),
(12, 3, 5),
(13, 4, 1),
(14, 4, 2),
(15, 4, 3),
(16, 4, 4),
(17, 4, 5),
(18, 5, 1),
(19, 5, 2),
(20, 6, 1),
(21, 6, 2),
(22, 7, 1),
(23, 7, 2),
(24, 8, 1),
(25, 8, 2),
(26, 9, 1),
(27, 9, 2),
(28, 10, 1),
(29, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_images`
--

CREATE TABLE `vehicle_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attachment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_info`
--

CREATE TABLE `vehicle_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate_number` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `model_year` varchar(255) DEFAULT NULL,
  `vehicle_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_verified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `fleet_manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_info`
--

INSERT INTO `vehicle_info` (`id`, `name`, `description`, `plate_number`, `color`, `model`, `seat`, `model_year`, `vehicle_type_id`, `driver_id`, `is_verified`, `status`, `fleet_manager_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kamran\'s Car', 'Premium Sedan', 'NY-12345', 'Black', 'Toyota Camry', 4, '2022', 1, 4, 1, 1, NULL, '2026-05-23 05:31:41', '2026-05-23 06:07:59', NULL),
(2, 'Tesla Model 3', 'Eco-friendly premium vehicle', 'CO-TES3', 'Pearl White', 'Tesla Model 3', 4, '2023', 1, 12, 1, 1, NULL, '2026-05-23 05:31:45', '2026-05-23 05:31:45', NULL),
(3, 'Chevrolet Bolt EV', 'Eco-friendly premium vehicle', 'CO-BOLT', 'Metallic Blue', 'Chevrolet Bolt EV', 4, '2022', 1, 13, 1, 1, NULL, '2026-05-23 05:31:45', '2026-05-23 05:31:45', NULL),
(4, 'Honda Accord', 'Eco-friendly premium vehicle', 'CO-HONDA', 'Silver Shadow', 'Honda Accord', 4, '2021', 1, 14, 1, 1, NULL, '2026-05-23 05:31:46', '2026-05-23 05:31:46', NULL),
(5, 'Lexus RX 450h', 'Eco-friendly premium vehicle', 'CO-LEX45', 'Charcoal Grey', 'Lexus RX 450h', 4, '2022', 1, 15, 1, 1, NULL, '2026-05-23 05:31:47', '2026-05-23 05:31:47', NULL),
(6, 'Ford Mustang Mach-E', 'Eco-friendly premium vehicle', 'CO-FORDE', 'Rapid Red', 'Ford Mustang Mach-E', 4, '2023', 1, 16, 1, 1, NULL, '2026-05-23 05:31:48', '2026-05-23 05:31:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_info_docs`
--

CREATE TABLE `vehicle_info_docs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_info_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fleet_manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `document_id` bigint(20) UNSIGNED DEFAULT NULL,
  `document_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_services`
--

CREATE TABLE `vehicle_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_type_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_surge_prices`
--

CREATE TABLE `vehicle_surge_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_type_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `surge_price_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_types`
--

CREATE TABLE `vehicle_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `vehicle_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vehicle_map_icon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `max_seat` int(11) DEFAULT NULL,
  `is_all_zones` int(11) DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_types`
--

INSERT INTO `vehicle_types` (`id`, `name`, `description`, `vehicle_image_id`, `vehicle_map_icon_id`, `service_id`, `slug`, `max_seat`, `is_all_zones`, `created_by_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"Bike\"}', NULL, NULL, NULL, 1, 'bike', NULL, 0, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(2, '{\"en\":\"Auto\"}', NULL, NULL, NULL, 1, 'auto', NULL, 0, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(3, '{\"en\":\"Car\"}', NULL, NULL, NULL, 1, 'car', NULL, 0, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(4, '{\"en\":\"Prime Car\"}', NULL, NULL, NULL, 1, 'prime-car', NULL, 0, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(5, '{\"en\":\"Van\"}', NULL, NULL, NULL, 2, 'van', NULL, 0, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(6, '{\"en\":\"Bolero\"}', NULL, NULL, NULL, 2, 'bolero', NULL, 0, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(7, '{\"en\":\"Chhota-hathi\"}', NULL, NULL, NULL, 2, 'chhota-hathi', NULL, 0, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(8, '{\"en\":\"Tempo\"}', NULL, NULL, NULL, 2, 'tempo', NULL, 0, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(9, '{\"en\":\"Truck\"}', NULL, NULL, NULL, 2, 'truck', NULL, 0, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(10, '{\"en\":\"Big Truck\"}', NULL, NULL, NULL, 2, 'big-truck', NULL, 0, 1, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type_hourly_packages`
--

CREATE TABLE `vehicle_type_hourly_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hourly_package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type_zones`
--

CREATE TABLE `vehicle_type_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_type_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `base_fare_charge` decimal(15,2) DEFAULT 0.00,
  `base_distance` decimal(15,2) DEFAULT 0.00,
  `is_allow_tax` decimal(15,2) DEFAULT 0.00,
  `is_allow_preference` decimal(15,2) DEFAULT 0.00,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `per_distance_charge` decimal(15,2) DEFAULT 0.00,
  `per_minute_charge` decimal(15,2) DEFAULT 0.00,
  `per_weight_charge` decimal(15,2) DEFAULT 0.00,
  `is_unlimited` int(11) DEFAULT 1,
  `waiting_charge` decimal(15,2) DEFAULT 0.00,
  `free_waiting_time_before_start_ride` decimal(15,2) DEFAULT 0.00,
  `free_waiting_time_after_start_ride` decimal(15,2) DEFAULT 0.00,
  `is_allow_airport_charge` decimal(15,2) DEFAULT 0.00,
  `cancellation_charge_for_rider` decimal(15,2) DEFAULT 0.00,
  `cancellation_charge_for_driver` decimal(15,2) DEFAULT 0.00,
  `charge_goes_to` enum('rider','driver','admin') DEFAULT 'admin',
  `commission_type` enum('fixed','percentage') DEFAULT 'fixed',
  `commission_rate` decimal(15,2) DEFAULT 0.00,
  `airport_charge_rate` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_type_zones`
--

INSERT INTO `vehicle_type_zones` (`id`, `vehicle_type_id`, `zone_id`, `base_fare_charge`, `base_distance`, `is_allow_tax`, `is_allow_preference`, `tax_id`, `per_distance_charge`, `per_minute_charge`, `per_weight_charge`, `is_unlimited`, `waiting_charge`, `free_waiting_time_before_start_ride`, `free_waiting_time_after_start_ride`, `is_allow_airport_charge`, `cancellation_charge_for_rider`, `cancellation_charge_for_driver`, `charge_goes_to`, `commission_type`, `commission_rate`, `airport_charge_rate`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 10.00, 2.00, 0.00, 0.00, NULL, 2.00, 0.50, 1.00, 1, 0.10, 5.00, 5.00, 0.00, 5.00, 2.00, 'admin', 'percentage', 15.00, 0.00, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(2, 2, 1, 10.00, 2.00, 0.00, 0.00, NULL, 2.00, 0.50, 1.00, 1, 0.10, 5.00, 5.00, 0.00, 5.00, 2.00, 'admin', 'percentage', 15.00, 0.00, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(3, 3, 1, 10.00, 2.00, 0.00, 0.00, NULL, 2.00, 0.50, 1.00, 1, 0.10, 5.00, 5.00, 0.00, 5.00, 2.00, 'admin', 'percentage', 15.00, 0.00, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(4, 4, 1, 10.00, 2.00, 0.00, 0.00, NULL, 2.00, 0.50, 1.00, 1, 0.10, 5.00, 5.00, 0.00, 5.00, 2.00, 'admin', 'percentage', 15.00, 0.00, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(5, 5, 1, 10.00, 2.00, 0.00, 0.00, NULL, 2.00, 0.50, 1.00, 1, 0.10, 5.00, 5.00, 0.00, 5.00, 2.00, 'admin', 'percentage', 15.00, 0.00, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(6, 6, 1, 10.00, 2.00, 0.00, 0.00, NULL, 2.00, 0.50, 1.00, 1, 0.10, 5.00, 5.00, 0.00, 5.00, 2.00, 'admin', 'percentage', 15.00, 0.00, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(7, 7, 1, 10.00, 2.00, 0.00, 0.00, NULL, 2.00, 0.50, 1.00, 1, 0.10, 5.00, 5.00, 0.00, 5.00, 2.00, 'admin', 'percentage', 15.00, 0.00, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL),
(8, 8, 1, 10.00, 2.00, 0.00, 0.00, NULL, 2.00, 0.50, 1.00, 1, 0.10, 5.00, 5.00, 0.00, 5.00, 2.00, 'admin', 'percentage', 15.00, 0.00, '2026-05-23 05:31:41', '2026-05-23 05:31:41', NULL),
(9, 9, 1, 10.00, 2.00, 0.00, 0.00, NULL, 2.00, 0.50, 1.00, 1, 0.10, 5.00, 5.00, 0.00, 5.00, 2.00, 'admin', 'percentage', 15.00, 0.00, '2026-05-23 05:31:41', '2026-05-23 05:31:41', NULL),
(10, 10, 1, 10.00, 2.00, 0.00, 0.00, NULL, 2.00, 0.50, 1.00, 1, 0.10, 5.00, 5.00, 0.00, 5.00, 2.00, 'admin', 'percentage', 15.00, 0.00, '2026-05-23 05:31:41', '2026-05-23 05:31:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type_zone_preferences`
--

CREATE TABLE `vehicle_type_zone_preferences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_type_zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `preference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) DEFAULT 0.00,
  `message` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_wallet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_type` enum('paypal','bank') DEFAULT 'bank',
  `is_used` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `place_points` geometry DEFAULT NULL,
  `locations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`locations`)),
  `payment_method` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payment_method`)),
  `amount` decimal(15,2) DEFAULT 0.00,
  `status` int(11) DEFAULT 1,
  `weight_unit` enum('kilogram','pound') DEFAULT 'kilogram',
  `distance_type` enum('mile','km') DEFAULT 'mile',
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_rides_in_peak_zone` bigint(20) UNSIGNED DEFAULT 0,
  `peak_zone_geographic_radius` decimal(8,2) DEFAULT 2.00,
  `minutes_choosing_peak_zone` int(10) UNSIGNED DEFAULT 5,
  `minutes_peak_zone_active` int(10) UNSIGNED DEFAULT 60,
  `peak_price_increase_percentage` decimal(5,2) DEFAULT 20.00,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`, `place_points`, `locations`, `payment_method`, `amount`, `status`, `weight_unit`, `distance_type`, `currency_id`, `total_rides_in_peak_zone`, `peak_zone_geographic_radius`, `minutes_choosing_peak_zone`, `minutes_peak_zone_active`, `peak_price_increase_percentage`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"Universal Zone\"}', 0x000000000103000000010000000500000000000000008066c000000000004055c000000000008066c0000000000040554000000000008066400000000000405540000000000080664000000000004055c000000000008066c000000000004055c0, '[{\"lat\":-85,\"lng\":-180},{\"lat\":85,\"lng\":-180},{\"lat\":85,\"lng\":180},{\"lat\":-85,\"lng\":180},{\"lat\":-85,\"lng\":-180}]', '[\"cash\",\"wallet\"]', 0.00, 1, 'kilogram', 'km', 1, 0, 2.00, 5, 60, 20.00, 1, '2026-05-23 05:31:40', '2026-05-23 05:31:40', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`),
  ADD KEY `addresses_country_id_foreign` (`country_id`);

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `airports_name_unique` (`name`),
  ADD KEY `airports_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `ambulances`
--
ALTER TABLE `ambulances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ambulances_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `assigned_tickets`
--
ALTER TABLE `assigned_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_tickets_user_id_foreign` (`user_id`),
  ADD KEY `assigned_tickets_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `backup_logs`
--
ALTER TABLE `backup_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`),
  ADD KEY `banners_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `banner_services`
--
ALTER TABLE `banner_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_services_banner_id_foreign` (`banner_id`),
  ADD KEY `banner_services_service_id_foreign` (`service_id`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bids_ride_id_foreign` (`ride_id`),
  ADD KEY `bids_driver_id_foreign` (`driver_id`),
  ADD KEY `bids_ride_request_id_foreign` (`ride_request_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_blog_thumbnail_id_foreign` (`blog_thumbnail_id`),
  ADD KEY `blogs_blog_meta_image_id_foreign` (`blog_meta_image_id`),
  ADD KEY `blogs_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_categories_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_tags_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `cab_commission_histories`
--
ALTER TABLE `cab_commission_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cab_commission_histories_ride_id_foreign` (`ride_id`),
  ADD KEY `cab_commission_histories_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `cab_referral_bonuses`
--
ALTER TABLE `cab_referral_bonuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cab_referral_bonuses_referrer_id_index` (`referrer_id`),
  ADD KEY `cab_referral_bonuses_referred_id_index` (`referred_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cancellation_reasons`
--
ALTER TABLE `cancellation_reasons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cancellation_reasons_slug_unique` (`slug`),
  ADD KEY `cancellation_reasons_created_by_id_foreign` (`created_by_id`),
  ADD KEY `cancellation_reasons_icon_image_id_foreign` (`icon_image_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_category_image_id_foreign` (`category_image_id`),
  ADD KEY `categories_category_meta_image_id_foreign` (`category_meta_image_id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `categories_services`
--
ALTER TABLE `categories_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_services_service_category_id_foreign` (`service_category_id`),
  ADD KEY `categories_services_service_id_foreign` (`service_id`);

--
-- Indexes for table `company_addresses`
--
ALTER TABLE `company_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_addresses_fleet_manager_id_foreign` (`fleet_manager_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_name_index` (`name`),
  ADD KEY `countries_currency_code_index` (`currency_code`),
  ADD KEY `countries_calling_code_index` (`calling_code`),
  ADD KEY `countries_flag_index` (`flag`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `coupon_riders`
--
ALTER TABLE `coupon_riders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_riders_coupon_id_foreign` (`coupon_id`),
  ADD KEY `coupon_riders_rider_id_foreign` (`rider_id`);

--
-- Indexes for table `coupon_service`
--
ALTER TABLE `coupon_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_service_coupon_id_foreign` (`coupon_id`),
  ADD KEY `coupon_service_service_id_foreign` (`service_id`);

--
-- Indexes for table `coupon_vehicle_types`
--
ALTER TABLE `coupon_vehicle_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_vehicle_types_coupon_id_foreign` (`coupon_id`),
  ADD KEY `coupon_vehicle_types_vehicle_type_id_foreign` (`vehicle_type_id`);

--
-- Indexes for table `coupon_zones`
--
ALTER TABLE `coupon_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_zones_coupon_id_foreign` (`coupon_id`),
  ADD KEY `coupon_zones_zone_id_foreign` (`zone_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currencies_created_by_id_foreign` (`created_by_id`),
  ADD KEY `currencies_code_index` (`code`),
  ADD KEY `currencies_symbol_index` (`symbol`),
  ADD KEY `currencies_exchange_rate_index` (`exchange_rate`),
  ADD KEY `currencies_status_index` (`status`),
  ADD KEY `currencies_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `customizations`
--
ALTER TABLE `customizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_slug_unique` (`slug`),
  ADD KEY `departments_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `department_users`
--
ALTER TABLE `department_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_users_user_id_foreign` (`user_id`),
  ADD KEY `department_users_department_id_foreign` (`department_id`);

--
-- Indexes for table `dispatcher_zones`
--
ALTER TABLE `dispatcher_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dispatcher_zones_zone_id_foreign` (`zone_id`),
  ADD KEY `dispatcher_zones_dispatcher_id_foreign` (`dispatcher_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `driver_documents`
--
ALTER TABLE `driver_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_documents_driver_id_foreign` (`driver_id`),
  ADD KEY `driver_documents_fleet_manager_id_foreign` (`fleet_manager_id`),
  ADD KEY `driver_documents_document_id_foreign` (`document_id`),
  ADD KEY `driver_documents_document_image_id_foreign` (`document_image_id`),
  ADD KEY `driver_documents_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `driver_incentive_progress`
--
ALTER TABLE `driver_incentive_progress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_driver_period_progress` (`driver_id`,`vehicle_type_zone_id`,`period_type`,`period_date`),
  ADD KEY `driver_incentive_progress_vehicle_type_zone_id_foreign` (`vehicle_type_zone_id`);

--
-- Indexes for table `driver_preferences`
--
ALTER TABLE `driver_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_preferences_driver_id_foreign` (`driver_id`),
  ADD KEY `driver_preferences_preference_id_foreign` (`preference_id`);

--
-- Indexes for table `driver_reviews`
--
ALTER TABLE `driver_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_reviews_ride_id_foreign` (`ride_id`),
  ADD KEY `driver_reviews_service_id_foreign` (`service_id`),
  ADD KEY `driver_reviews_service_category_id_foreign` (`service_category_id`),
  ADD KEY `driver_reviews_driver_id_foreign` (`driver_id`),
  ADD KEY `driver_reviews_rider_id_foreign` (`rider_id`);

--
-- Indexes for table `driver_rules`
--
ALTER TABLE `driver_rules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `driver_rules_slug_unique` (`slug`),
  ADD KEY `driver_rules_created_by_id_foreign` (`created_by_id`),
  ADD KEY `driver_rules_rule_image_id_foreign` (`rule_image_id`);

--
-- Indexes for table `driver_subscriptions`
--
ALTER TABLE `driver_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_subscriptions_plan_id_foreign` (`plan_id`),
  ADD KEY `driver_subscriptions_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `driver_vehicle_types`
--
ALTER TABLE `driver_vehicle_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_vehicle_types_driver_rule_id_foreign` (`driver_rule_id`),
  ADD KEY `driver_vehicle_types_vehicle_type_id_foreign` (`vehicle_type_id`);

--
-- Indexes for table `driver_wallets`
--
ALTER TABLE `driver_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_wallets_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `driver_wallet_histories`
--
ALTER TABLE `driver_wallet_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_wallet_histories_driver_wallet_id_foreign` (`driver_wallet_id`),
  ADD KEY `driver_wallet_histories_from_user_id_foreign` (`from_user_id`);

--
-- Indexes for table `driver_zones`
--
ALTER TABLE `driver_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_zones_zone_id_foreign` (`zone_id`),
  ADD KEY `driver_zones_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_charges`
--
ALTER TABLE `extra_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extra_charges_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `fleet_documents`
--
ALTER TABLE `fleet_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fleet_documents_fleet_manager_id_foreign` (`fleet_manager_id`),
  ADD KEY `fleet_documents_document_id_foreign` (`document_id`),
  ADD KEY `fleet_documents_document_image_id_foreign` (`document_image_id`),
  ADD KEY `fleet_documents_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `fleet_manager_wallets`
--
ALTER TABLE `fleet_manager_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fleet_manager_wallets_fleet_manager_id_foreign` (`fleet_manager_id`);

--
-- Indexes for table `fleet_vehicles`
--
ALTER TABLE `fleet_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fleet_vehicles_fleet_manager_id_foreign` (`fleet_manager_id`),
  ADD KEY `fleet_vehicles_vehicle_type_id_foreign` (`vehicle_type_id`);

--
-- Indexes for table `fleet_wallet_histories`
--
ALTER TABLE `fleet_wallet_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fleet_wallet_histories_fleet_wallet_id_foreign` (`fleet_wallet_id`),
  ADD KEY `fleet_wallet_histories_from_user_id_foreign` (`from_user_id`);

--
-- Indexes for table `fleet_withdraw_requests`
--
ALTER TABLE `fleet_withdraw_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fleet_withdraw_requests_fleet_wallet_id_foreign` (`fleet_wallet_id`),
  ADD KEY `fleet_withdraw_requests_fleet_manager_id_foreign` (`fleet_manager_id`);

--
-- Indexes for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_fields_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `hourly_packages`
--
ALTER TABLE `hourly_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hourly_packages_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `incentives`
--
ALTER TABLE `incentives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incentives_driver_id_foreign` (`driver_id`),
  ADD KEY `incentives_incentive_level_id_foreign` (`incentive_level_id`);

--
-- Indexes for table `incentive_levels`
--
ALTER TABLE `incentive_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_level_per_period` (`vehicle_type_zone_id`,`period_type`,`level_number`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledge_bases`
--
ALTER TABLE `knowledge_bases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `knowledge_bases_slug_unique` (`slug`),
  ADD KEY `knowledge_bases_knowledge_thumbnail_id_foreign` (`knowledge_thumbnail_id`),
  ADD KEY `knowledge_bases_knowledge_meta_image_id_foreign` (`knowledge_meta_image_id`),
  ADD KEY `knowledge_bases_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `knowledge_base_categories`
--
ALTER TABLE `knowledge_base_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knowledge_base_categories_category_image_id_foreign` (`category_image_id`),
  ADD KEY `knowledge_base_categories_category_meta_image_id_foreign` (`category_meta_image_id`),
  ADD KEY `knowledge_base_categories_parent_id_foreign` (`parent_id`),
  ADD KEY `knowledge_base_categories_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `knowledge_base_tags`
--
ALTER TABLE `knowledge_base_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knowledge_base_tags_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `knowledge_categories`
--
ALTER TABLE `knowledge_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knowledge_categories_knowledge_id_foreign` (`knowledge_id`),
  ADD KEY `knowledge_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `knowledge_tags`
--
ALTER TABLE `knowledge_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knowledge_tags_knowledge_id_foreign` (`knowledge_id`),
  ADD KEY `knowledge_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `landing_pages`
--
ALTER TABLE `landing_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languages_created_by_id_foreign` (`created_by_id`),
  ADD KEY `languages_name_index` (`name`),
  ADD KEY `languages_locale_index` (`locale`),
  ADD KEY `languages_flag_index` (`flag`),
  ADD KEY `languages_status_index` (`status`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_rider_id_foreign` (`rider_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_created_by_id_foreign` (`created_by_id`),
  ADD KEY `media_name_index` (`name`),
  ADD KEY `media_model_id_index` (`model_id`),
  ADD KEY `media_model_type_index` (`model_type`),
  ADD KEY `media_collection_name_index` (`collection_name`),
  ADD KEY `media_file_name_index` (`file_name`),
  ADD KEY `media_disk_index` (`disk`),
  ADD KEY `media_mime_type_index` (`mime_type`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_items_slug_unique` (`slug`),
  ADD KEY `menu_items_menu_foreign` (`menu`),
  ADD KEY `menu_items_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notices_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `notice_drivers`
--
ALTER TABLE `notice_drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_drivers_notice_id_foreign` (`notice_id`),
  ADD KEY `notice_drivers_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `onboardings`
--
ALTER TABLE `onboardings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onboardings_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_created_by_id_foreign` (`created_by_id`),
  ADD KEY `pages_page_meta_image_id_foreign` (`page_meta_image_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways_transactions`
--
ALTER TABLE `payment_gateways_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_gateways_transactions_transaction_id_unique` (`transaction_id`),
  ADD KEY `payment_gateways_transactions_item_id_index` (`item_id`),
  ADD KEY `payment_gateways_transactions_transaction_id_index` (`transaction_id`),
  ADD KEY `payment_gateways_transactions_payment_status_index` (`payment_status`),
  ADD KEY `payment_gateways_transactions_is_verified_index` (`is_verified`);

--
-- Indexes for table `peak_zones`
--
ALTER TABLE `peak_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peak_zones_created_by_id_foreign` (`created_by_id`),
  ADD KEY `peak_zones_zone_id_foreign` (`zone_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plans_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `plan_service_categories`
--
ALTER TABLE `plan_service_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_service_categories_plan_id_foreign` (`plan_id`),
  ADD KEY `plan_service_categories_service_category_id_foreign` (`service_category_id`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preferences_icon_image_id_foreign` (`icon_image_id`);

--
-- Indexes for table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `priorities_slug_unique` (`slug`),
  ADD KEY `priorities_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `push_notifications_image_id_foreign` (`image_id`),
  ADD KEY `push_notifications_user_id_foreign` (`user_id`),
  ADD KEY `push_notifications_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `push_notification_templates`
--
ALTER TABLE `push_notification_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `rental_vehicles`
--
ALTER TABLE `rental_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rental_vehicles_zone_id_foreign` (`zone_id`),
  ADD KEY `rental_vehicles_driver_id_foreign` (`driver_id`),
  ADD KEY `rental_vehicles_side_view_id_foreign` (`side_view_id`),
  ADD KEY `rental_vehicles_boot_view_id_foreign` (`boot_view_id`),
  ADD KEY `rental_vehicles_front_view_id_foreign` (`front_view_id`),
  ADD KEY `rental_vehicles_created_by_id_foreign` (`created_by_id`),
  ADD KEY `rental_vehicles_normal_image_id_foreign` (`normal_image_id`),
  ADD KEY `rental_vehicles_vehicle_type_id_foreign` (`vehicle_type_id`),
  ADD KEY `rental_vehicles_interior_image_id_foreign` (`interior_image_id`),
  ADD KEY `rental_vehicles_registration_image_id_foreign` (`registration_image_id`);

--
-- Indexes for table `rental_vehicle_zones`
--
ALTER TABLE `rental_vehicle_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rental_vehicle_zones_rental_vehicle_id_foreign` (`rental_vehicle_id`),
  ADD KEY `rental_vehicle_zones_zone_id_foreign` (`zone_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rider_reviews`
--
ALTER TABLE `rider_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rider_reviews_ride_id_foreign` (`ride_id`),
  ADD KEY `rider_reviews_service_id_foreign` (`service_id`),
  ADD KEY `rider_reviews_rider_id_foreign` (`rider_id`),
  ADD KEY `rider_reviews_driver_id_foreign` (`driver_id`),
  ADD KEY `rider_reviews_service_category_id_foreign` (`service_category_id`);

--
-- Indexes for table `rider_wallets`
--
ALTER TABLE `rider_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rider_wallets_rider_id_foreign` (`rider_id`);

--
-- Indexes for table `rider_wallet_histories`
--
ALTER TABLE `rider_wallet_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rider_wallet_histories_rider_wallet_id_foreign` (`rider_wallet_id`),
  ADD KEY `rider_wallet_histories_from_user_id_foreign` (`from_user_id`);

--
-- Indexes for table `rides`
--
ALTER TABLE `rides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rides_ambulance_id_foreign` (`ambulance_id`),
  ADD KEY `rides_rider_id_foreign` (`rider_id`),
  ADD KEY `rides_driver_id_foreign` (`driver_id`),
  ADD KEY `rides_coupon_id_foreign` (`coupon_id`),
  ADD KEY `rides_created_by_id_foreign` (`created_by_id`),
  ADD KEY `rides_service_id_foreign` (`service_id`),
  ADD KEY `rides_ride_status_id_foreign` (`ride_status_id`),
  ADD KEY `rides_vehicle_type_id_foreign` (`vehicle_type_id`),
  ADD KEY `rides_rental_vehicle_id_foreign` (`rental_vehicle_id`),
  ADD KEY `rides_cargo_image_id_foreign` (`cargo_image_id`),
  ADD KEY `rides_hourly_package_id_foreign` (`hourly_package_id`),
  ADD KEY `rides_service_category_id_foreign` (`service_category_id`),
  ADD KEY `rides_peak_zone_id_foreign` (`peak_zone_id`);

--
-- Indexes for table `ride_bids`
--
ALTER TABLE `ride_bids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ride_bids_ride_id_foreign` (`ride_id`),
  ADD KEY `ride_bids_bid_id_foreign` (`bid_id`);

--
-- Indexes for table `ride_preferences`
--
ALTER TABLE `ride_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ride_preferences_preference_id_foreign` (`preference_id`),
  ADD KEY `ride_preferences_ride_id_foreign` (`ride_id`);

--
-- Indexes for table `ride_requests`
--
ALTER TABLE `ride_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ride_requests_ambulance_id_foreign` (`ambulance_id`),
  ADD KEY `ride_requests_rider_id_foreign` (`rider_id`),
  ADD KEY `ride_requests_service_id_foreign` (`service_id`),
  ADD KEY `ride_requests_vehicle_type_id_foreign` (`vehicle_type_id`),
  ADD KEY `ride_requests_rental_vehicle_id_foreign` (`rental_vehicle_id`),
  ADD KEY `ride_requests_service_category_id_foreign` (`service_category_id`),
  ADD KEY `ride_requests_cargo_image_id_foreign` (`cargo_image_id`),
  ADD KEY `ride_requests_hourly_package_id_foreign` (`hourly_package_id`),
  ADD KEY `ride_requests_created_by_id_foreign` (`created_by_id`),
  ADD KEY `ride_requests_peak_zone_id_foreign` (`peak_zone_id`);

--
-- Indexes for table `ride_request_drivers`
--
ALTER TABLE `ride_request_drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ride_request_drivers_ride_request_id_foreign` (`ride_request_id`),
  ADD KEY `ride_request_drivers_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `ride_request_preferences`
--
ALTER TABLE `ride_request_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ride_request_preferences_preference_id_foreign` (`preference_id`),
  ADD KEY `ride_request_preferences_ride_request_id_foreign` (`ride_request_id`);

--
-- Indexes for table `ride_request_zones`
--
ALTER TABLE `ride_request_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ride_request_zones_ride_request_id_foreign` (`ride_request_id`),
  ADD KEY `ride_request_zones_zone_id_foreign` (`zone_id`);

--
-- Indexes for table `ride_status`
--
ALTER TABLE `ride_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ride_status_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `ride_status_activities`
--
ALTER TABLE `ride_status_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ride_status_activities_ride_id_foreign` (`ride_id`),
  ADD KEY `ride_status_activities_ride_request_id_foreign` (`ride_request_id`);

--
-- Indexes for table `ride_zones`
--
ALTER TABLE `ride_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ride_zones_ride_id_foreign` (`ride_id`),
  ADD KEY `ride_zones_zone_id_foreign` (`zone_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_created_by_id_foreign` (`created_by_id`),
  ADD KEY `services_service_image_id_foreign` (`service_image_id`),
  ADD KEY `services_service_icon_id_foreign` (`service_icon_id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_categories_created_by_id_foreign` (`created_by_id`),
  ADD KEY `service_categories_service_id_foreign` (`service_id`),
  ADD KEY `service_categories_service_category_image_id_foreign` (`service_category_image_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sos`
--
ALTER TABLE `sos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sos_slug_unique` (`slug`),
  ADD KEY `sos_created_by_id_foreign` (`created_by_id`),
  ADD KEY `sos_sos_image_id_foreign` (`sos_image_id`);

--
-- Indexes for table `sos_alerts`
--
ALTER TABLE `sos_alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sos_alerts_ride_id_foreign` (`ride_id`),
  ADD KEY `sos_alerts_sos_id_foreign` (`sos_id`),
  ADD KEY `sos_alerts_sos_status_id_foreign` (`sos_status_id`),
  ADD KEY `sos_alerts_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `sos_statuses`
--
ALTER TABLE `sos_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sos_statuses_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `sos_status_activities`
--
ALTER TABLE `sos_status_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sos_status_activities_sos_alert_id_foreign` (`sos_alert_id`),
  ADD KEY `sos_status_activities_ride_id_foreign` (`ride_id`);

--
-- Indexes for table `sos_zones`
--
ALTER TABLE `sos_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sos_zones_s_o_s_id_foreign` (`s_o_s_id`),
  ADD KEY `sos_zones_zone_id_foreign` (`zone_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `statuses_slug_unique` (`slug`),
  ADD KEY `statuses_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surge_prices`
--
ALTER TABLE `surge_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surge_prices_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxes_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `taxido_settings`
--
ALTER TABLE `taxido_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_profile_image_id_foreign` (`profile_image_id`),
  ADD KEY `testimonials_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_slug_unique` (`slug`),
  ADD UNIQUE KEY `tickets_ticket_number_unique` (`ticket_number`),
  ADD KEY `tickets_user_id_foreign` (`user_id`),
  ADD KEY `tickets_department_id_foreign` (`department_id`),
  ADD KEY `tickets_priority_id_foreign` (`priority_id`),
  ADD KEY `tickets_ticket_status_id_foreign` (`ticket_status_id`),
  ADD KEY `tickets_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `ticket_settings`
--
ALTER TABLE `ticket_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_firebase_uid_unique` (`firebase_uid`),
  ADD UNIQUE KEY `users_referral_code_unique` (`referral_code`),
  ADD KEY `users_created_by_id_foreign` (`created_by_id`),
  ADD KEY `users_referred_by_id_foreign` (`referred_by_id`),
  ADD KEY `users_service_id_foreign` (`service_id`),
  ADD KEY `users_service_category_id_foreign` (`service_category_id`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_categories_vehicle_type_id_foreign` (`vehicle_type_id`),
  ADD KEY `vehicle_categories_service_category_id_foreign` (`service_category_id`);

--
-- Indexes for table `vehicle_images`
--
ALTER TABLE `vehicle_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_images_vehicle_image_id_foreign` (`vehicle_image_id`),
  ADD KEY `vehicle_images_attachment_id_foreign` (`attachment_id`);

--
-- Indexes for table `vehicle_info`
--
ALTER TABLE `vehicle_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_info_vehicle_type_id_foreign` (`vehicle_type_id`),
  ADD KEY `vehicle_info_driver_id_foreign` (`driver_id`),
  ADD KEY `vehicle_info_fleet_manager_id_foreign` (`fleet_manager_id`);

--
-- Indexes for table `vehicle_info_docs`
--
ALTER TABLE `vehicle_info_docs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_info_docs_vehicle_info_id_foreign` (`vehicle_info_id`),
  ADD KEY `vehicle_info_docs_fleet_manager_id_foreign` (`fleet_manager_id`),
  ADD KEY `vehicle_info_docs_document_id_foreign` (`document_id`),
  ADD KEY `vehicle_info_docs_document_image_id_foreign` (`document_image_id`),
  ADD KEY `vehicle_info_docs_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `vehicle_services`
--
ALTER TABLE `vehicle_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_services_vehicle_type_id_foreign` (`vehicle_type_id`),
  ADD KEY `vehicle_services_service_id_foreign` (`service_id`);

--
-- Indexes for table `vehicle_surge_prices`
--
ALTER TABLE `vehicle_surge_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_surge_prices_vehicle_type_id_foreign` (`vehicle_type_id`),
  ADD KEY `vehicle_surge_prices_zone_id_foreign` (`zone_id`),
  ADD KEY `vehicle_surge_prices_surge_price_id_foreign` (`surge_price_id`);

--
-- Indexes for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicle_types_slug_unique` (`slug`),
  ADD KEY `vehicle_types_service_id_foreign` (`service_id`),
  ADD KEY `vehicle_types_created_by_id_foreign` (`created_by_id`),
  ADD KEY `vehicle_types_vehicle_image_id_foreign` (`vehicle_image_id`),
  ADD KEY `vehicle_types_vehicle_map_icon_id_foreign` (`vehicle_map_icon_id`);

--
-- Indexes for table `vehicle_type_hourly_packages`
--
ALTER TABLE `vehicle_type_hourly_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_type_hourly_packages_vehicle_type_id_foreign` (`vehicle_type_id`),
  ADD KEY `vehicle_type_hourly_packages_hourly_package_id_foreign` (`hourly_package_id`);

--
-- Indexes for table `vehicle_type_zones`
--
ALTER TABLE `vehicle_type_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_type_zones_zone_id_foreign` (`zone_id`),
  ADD KEY `vehicle_type_zones_tax_id_foreign` (`tax_id`),
  ADD KEY `vehicle_type_zones_vehicle_type_id_foreign` (`vehicle_type_id`);

--
-- Indexes for table `vehicle_type_zone_preferences`
--
ALTER TABLE `vehicle_type_zone_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_type_zone_preferences_vehicle_type_zone_id_foreign` (`vehicle_type_zone_id`),
  ADD KEY `vehicle_type_zone_preferences_preference_id_foreign` (`preference_id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraw_requests_driver_wallet_id_foreign` (`driver_wallet_id`),
  ADD KEY `withdraw_requests_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zones_name_unique` (`name`),
  ADD KEY `zones_created_by_id_foreign` (`created_by_id`),
  ADD KEY `zones_currency_id_foreign` (`currency_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ambulances`
--
ALTER TABLE `ambulances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assigned_tickets`
--
ALTER TABLE `assigned_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backup_logs`
--
ALTER TABLE `backup_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_services`
--
ALTER TABLE `banner_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cab_commission_histories`
--
ALTER TABLE `cab_commission_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cab_referral_bonuses`
--
ALTER TABLE `cab_referral_bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cancellation_reasons`
--
ALTER TABLE `cancellation_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories_services`
--
ALTER TABLE `categories_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_addresses`
--
ALTER TABLE `company_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=895;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_riders`
--
ALTER TABLE `coupon_riders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_service`
--
ALTER TABLE `coupon_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_vehicle_types`
--
ALTER TABLE `coupon_vehicle_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_zones`
--
ALTER TABLE `coupon_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customizations`
--
ALTER TABLE `customizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `department_users`
--
ALTER TABLE `department_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dispatcher_zones`
--
ALTER TABLE `dispatcher_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_documents`
--
ALTER TABLE `driver_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_incentive_progress`
--
ALTER TABLE `driver_incentive_progress`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_preferences`
--
ALTER TABLE `driver_preferences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_reviews`
--
ALTER TABLE `driver_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `driver_rules`
--
ALTER TABLE `driver_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_subscriptions`
--
ALTER TABLE `driver_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_vehicle_types`
--
ALTER TABLE `driver_vehicle_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_wallets`
--
ALTER TABLE `driver_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `driver_wallet_histories`
--
ALTER TABLE `driver_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `driver_zones`
--
ALTER TABLE `driver_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extra_charges`
--
ALTER TABLE `extra_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fleet_documents`
--
ALTER TABLE `fleet_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fleet_manager_wallets`
--
ALTER TABLE `fleet_manager_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fleet_vehicles`
--
ALTER TABLE `fleet_vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fleet_wallet_histories`
--
ALTER TABLE `fleet_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fleet_withdraw_requests`
--
ALTER TABLE `fleet_withdraw_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_fields`
--
ALTER TABLE `form_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hourly_packages`
--
ALTER TABLE `hourly_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incentives`
--
ALTER TABLE `incentives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incentive_levels`
--
ALTER TABLE `incentive_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knowledge_bases`
--
ALTER TABLE `knowledge_bases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knowledge_base_categories`
--
ALTER TABLE `knowledge_base_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knowledge_base_tags`
--
ALTER TABLE `knowledge_base_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knowledge_categories`
--
ALTER TABLE `knowledge_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knowledge_tags`
--
ALTER TABLE `knowledge_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landing_pages`
--
ALTER TABLE `landing_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_drivers`
--
ALTER TABLE `notice_drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onboardings`
--
ALTER TABLE `onboardings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways_transactions`
--
ALTER TABLE `payment_gateways_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peak_zones`
--
ALTER TABLE `peak_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plan_service_categories`
--
ALTER TABLE `plan_service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `push_notifications`
--
ALTER TABLE `push_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `push_notification_templates`
--
ALTER TABLE `push_notification_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rental_vehicles`
--
ALTER TABLE `rental_vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rental_vehicle_zones`
--
ALTER TABLE `rental_vehicle_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rider_reviews`
--
ALTER TABLE `rider_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rider_wallets`
--
ALTER TABLE `rider_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rider_wallet_histories`
--
ALTER TABLE `rider_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rides`
--
ALTER TABLE `rides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ride_bids`
--
ALTER TABLE `ride_bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ride_preferences`
--
ALTER TABLE `ride_preferences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ride_requests`
--
ALTER TABLE `ride_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ride_request_drivers`
--
ALTER TABLE `ride_request_drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ride_request_preferences`
--
ALTER TABLE `ride_request_preferences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ride_request_zones`
--
ALTER TABLE `ride_request_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ride_status`
--
ALTER TABLE `ride_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ride_status_activities`
--
ALTER TABLE `ride_status_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `ride_zones`
--
ALTER TABLE `ride_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sos`
--
ALTER TABLE `sos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sos_alerts`
--
ALTER TABLE `sos_alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sos_statuses`
--
ALTER TABLE `sos_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sos_status_activities`
--
ALTER TABLE `sos_status_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sos_zones`
--
ALTER TABLE `sos_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surge_prices`
--
ALTER TABLE `surge_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxido_settings`
--
ALTER TABLE `taxido_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_settings`
--
ALTER TABLE `ticket_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `vehicle_images`
--
ALTER TABLE `vehicle_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_info`
--
ALTER TABLE `vehicle_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_info_docs`
--
ALTER TABLE `vehicle_info_docs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_services`
--
ALTER TABLE `vehicle_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_surge_prices`
--
ALTER TABLE `vehicle_surge_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle_type_hourly_packages`
--
ALTER TABLE `vehicle_type_hourly_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_type_zones`
--
ALTER TABLE `vehicle_type_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle_type_zone_preferences`
--
ALTER TABLE `vehicle_type_zone_preferences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `airports`
--
ALTER TABLE `airports`
  ADD CONSTRAINT `airports_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ambulances`
--
ALTER TABLE `ambulances`
  ADD CONSTRAINT `ambulances_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assigned_tickets`
--
ALTER TABLE `assigned_tickets`
  ADD CONSTRAINT `assigned_tickets_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assigned_tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `banner_services`
--
ALTER TABLE `banner_services`
  ADD CONSTRAINT `banner_services_banner_id_foreign` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `banner_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bids`
--
ALTER TABLE `bids`
  ADD CONSTRAINT `bids_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bids_ride_id_foreign` FOREIGN KEY (`ride_id`) REFERENCES `rides` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bids_ride_request_id_foreign` FOREIGN KEY (`ride_request_id`) REFERENCES `ride_requests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_blog_meta_image_id_foreign` FOREIGN KEY (`blog_meta_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_blog_thumbnail_id_foreign` FOREIGN KEY (`blog_thumbnail_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD CONSTRAINT `blog_categories_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD CONSTRAINT `blog_tags_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cab_commission_histories`
--
ALTER TABLE `cab_commission_histories`
  ADD CONSTRAINT `cab_commission_histories_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cab_commission_histories_ride_id_foreign` FOREIGN KEY (`ride_id`) REFERENCES `rides` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cab_referral_bonuses`
--
ALTER TABLE `cab_referral_bonuses`
  ADD CONSTRAINT `cab_referral_bonuses_referred_id_foreign` FOREIGN KEY (`referred_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cab_referral_bonuses_referrer_id_foreign` FOREIGN KEY (`referrer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cancellation_reasons`
--
ALTER TABLE `cancellation_reasons`
  ADD CONSTRAINT `cancellation_reasons_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cancellation_reasons_icon_image_id_foreign` FOREIGN KEY (`icon_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_category_image_id_foreign` FOREIGN KEY (`category_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_category_meta_image_id_foreign` FOREIGN KEY (`category_meta_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories_services`
--
ALTER TABLE `categories_services`
  ADD CONSTRAINT `categories_services_service_category_id_foreign` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_addresses`
--
ALTER TABLE `company_addresses`
  ADD CONSTRAINT `company_addresses_fleet_manager_id_foreign` FOREIGN KEY (`fleet_manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_riders`
--
ALTER TABLE `coupon_riders`
  ADD CONSTRAINT `coupon_riders_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_riders_rider_id_foreign` FOREIGN KEY (`rider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_service`
--
ALTER TABLE `coupon_service`
  ADD CONSTRAINT `coupon_service_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_vehicle_types`
--
ALTER TABLE `coupon_vehicle_types`
  ADD CONSTRAINT `coupon_vehicle_types_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_vehicle_types_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_zones`
--
ALTER TABLE `coupon_zones`
  ADD CONSTRAINT `coupon_zones_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_zones_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `currencies`
--
ALTER TABLE `currencies`
  ADD CONSTRAINT `currencies_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `department_users`
--
ALTER TABLE `department_users`
  ADD CONSTRAINT `department_users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `department_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dispatcher_zones`
--
ALTER TABLE `dispatcher_zones`
  ADD CONSTRAINT `dispatcher_zones_dispatcher_id_foreign` FOREIGN KEY (`dispatcher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dispatcher_zones_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_documents`
--
ALTER TABLE `driver_documents`
  ADD CONSTRAINT `driver_documents_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_documents_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_documents_document_image_id_foreign` FOREIGN KEY (`document_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_documents_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_documents_fleet_manager_id_foreign` FOREIGN KEY (`fleet_manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_incentive_progress`
--
ALTER TABLE `driver_incentive_progress`
  ADD CONSTRAINT `driver_incentive_progress_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_incentive_progress_vehicle_type_zone_id_foreign` FOREIGN KEY (`vehicle_type_zone_id`) REFERENCES `vehicle_type_zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_preferences`
--
ALTER TABLE `driver_preferences`
  ADD CONSTRAINT `driver_preferences_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_preferences_preference_id_foreign` FOREIGN KEY (`preference_id`) REFERENCES `preferences` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_reviews`
--
ALTER TABLE `driver_reviews`
  ADD CONSTRAINT `driver_reviews_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_reviews_ride_id_foreign` FOREIGN KEY (`ride_id`) REFERENCES `rides` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_reviews_rider_id_foreign` FOREIGN KEY (`rider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_reviews_service_category_id_foreign` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_reviews_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_rules`
--
ALTER TABLE `driver_rules`
  ADD CONSTRAINT `driver_rules_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_rules_rule_image_id_foreign` FOREIGN KEY (`rule_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_subscriptions`
--
ALTER TABLE `driver_subscriptions`
  ADD CONSTRAINT `driver_subscriptions_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_vehicle_types`
--
ALTER TABLE `driver_vehicle_types`
  ADD CONSTRAINT `driver_vehicle_types_driver_rule_id_foreign` FOREIGN KEY (`driver_rule_id`) REFERENCES `driver_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_vehicle_types_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_wallets`
--
ALTER TABLE `driver_wallets`
  ADD CONSTRAINT `driver_wallets_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_wallet_histories`
--
ALTER TABLE `driver_wallet_histories`
  ADD CONSTRAINT `driver_wallet_histories_driver_wallet_id_foreign` FOREIGN KEY (`driver_wallet_id`) REFERENCES `driver_wallets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_wallet_histories_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_zones`
--
ALTER TABLE `driver_zones`
  ADD CONSTRAINT `driver_zones_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_zones_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `extra_charges`
--
ALTER TABLE `extra_charges`
  ADD CONSTRAINT `extra_charges_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fleet_documents`
--
ALTER TABLE `fleet_documents`
  ADD CONSTRAINT `fleet_documents_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fleet_documents_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fleet_documents_document_image_id_foreign` FOREIGN KEY (`document_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fleet_documents_fleet_manager_id_foreign` FOREIGN KEY (`fleet_manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fleet_manager_wallets`
--
ALTER TABLE `fleet_manager_wallets`
  ADD CONSTRAINT `fleet_manager_wallets_fleet_manager_id_foreign` FOREIGN KEY (`fleet_manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fleet_vehicles`
--
ALTER TABLE `fleet_vehicles`
  ADD CONSTRAINT `fleet_vehicles_fleet_manager_id_foreign` FOREIGN KEY (`fleet_manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fleet_vehicles_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fleet_wallet_histories`
--
ALTER TABLE `fleet_wallet_histories`
  ADD CONSTRAINT `fleet_wallet_histories_fleet_wallet_id_foreign` FOREIGN KEY (`fleet_wallet_id`) REFERENCES `fleet_manager_wallets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fleet_wallet_histories_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fleet_withdraw_requests`
--
ALTER TABLE `fleet_withdraw_requests`
  ADD CONSTRAINT `fleet_withdraw_requests_fleet_manager_id_foreign` FOREIGN KEY (`fleet_manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fleet_withdraw_requests_fleet_wallet_id_foreign` FOREIGN KEY (`fleet_wallet_id`) REFERENCES `fleet_manager_wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD CONSTRAINT `form_fields_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hourly_packages`
--
ALTER TABLE `hourly_packages`
  ADD CONSTRAINT `hourly_packages_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `incentives`
--
ALTER TABLE `incentives`
  ADD CONSTRAINT `incentives_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `incentives_incentive_level_id_foreign` FOREIGN KEY (`incentive_level_id`) REFERENCES `incentive_levels` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `incentive_levels`
--
ALTER TABLE `incentive_levels`
  ADD CONSTRAINT `incentive_levels_vehicle_type_zone_id_foreign` FOREIGN KEY (`vehicle_type_zone_id`) REFERENCES `vehicle_type_zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `knowledge_bases`
--
ALTER TABLE `knowledge_bases`
  ADD CONSTRAINT `knowledge_bases_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `knowledge_bases_knowledge_meta_image_id_foreign` FOREIGN KEY (`knowledge_meta_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `knowledge_bases_knowledge_thumbnail_id_foreign` FOREIGN KEY (`knowledge_thumbnail_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `knowledge_base_categories`
--
ALTER TABLE `knowledge_base_categories`
  ADD CONSTRAINT `knowledge_base_categories_category_image_id_foreign` FOREIGN KEY (`category_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `knowledge_base_categories_category_meta_image_id_foreign` FOREIGN KEY (`category_meta_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `knowledge_base_categories_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `knowledge_base_categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `knowledge_base_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `knowledge_base_tags`
--
ALTER TABLE `knowledge_base_tags`
  ADD CONSTRAINT `knowledge_base_tags_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `knowledge_categories`
--
ALTER TABLE `knowledge_categories`
  ADD CONSTRAINT `knowledge_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `knowledge_base_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `knowledge_categories_knowledge_id_foreign` FOREIGN KEY (`knowledge_id`) REFERENCES `knowledge_bases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `knowledge_tags`
--
ALTER TABLE `knowledge_tags`
  ADD CONSTRAINT `knowledge_tags_knowledge_id_foreign` FOREIGN KEY (`knowledge_id`) REFERENCES `knowledge_bases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `knowledge_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `knowledge_base_tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_rider_id_foreign` FOREIGN KEY (`rider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_menu_foreign` FOREIGN KEY (`menu`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `notices_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notice_drivers`
--
ALTER TABLE `notice_drivers`
  ADD CONSTRAINT `notice_drivers_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notice_drivers_notice_id_foreign` FOREIGN KEY (`notice_id`) REFERENCES `notices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onboardings`
--
ALTER TABLE `onboardings`
  ADD CONSTRAINT `onboardings_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_page_meta_image_id_foreign` FOREIGN KEY (`page_meta_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  ADD CONSTRAINT `payment_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `peak_zones`
--
ALTER TABLE `peak_zones`
  ADD CONSTRAINT `peak_zones_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `peak_zones_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `plans_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `plan_service_categories`
--
ALTER TABLE `plan_service_categories`
  ADD CONSTRAINT `plan_service_categories_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plan_service_categories_service_category_id_foreign` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `preferences`
--
ALTER TABLE `preferences`
  ADD CONSTRAINT `preferences_icon_image_id_foreign` FOREIGN KEY (`icon_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `priorities`
--
ALTER TABLE `priorities`
  ADD CONSTRAINT `priorities_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD CONSTRAINT `push_notifications_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `push_notifications_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `push_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rental_vehicles`
--
ALTER TABLE `rental_vehicles`
  ADD CONSTRAINT `rental_vehicles_boot_view_id_foreign` FOREIGN KEY (`boot_view_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rental_vehicles_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rental_vehicles_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rental_vehicles_front_view_id_foreign` FOREIGN KEY (`front_view_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rental_vehicles_interior_image_id_foreign` FOREIGN KEY (`interior_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rental_vehicles_normal_image_id_foreign` FOREIGN KEY (`normal_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rental_vehicles_registration_image_id_foreign` FOREIGN KEY (`registration_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rental_vehicles_side_view_id_foreign` FOREIGN KEY (`side_view_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rental_vehicles_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rental_vehicles_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rental_vehicle_zones`
--
ALTER TABLE `rental_vehicle_zones`
  ADD CONSTRAINT `rental_vehicle_zones_rental_vehicle_id_foreign` FOREIGN KEY (`rental_vehicle_id`) REFERENCES `rental_vehicles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rental_vehicle_zones_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rider_reviews`
--
ALTER TABLE `rider_reviews`
  ADD CONSTRAINT `rider_reviews_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rider_reviews_ride_id_foreign` FOREIGN KEY (`ride_id`) REFERENCES `rides` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rider_reviews_rider_id_foreign` FOREIGN KEY (`rider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rider_reviews_service_category_id_foreign` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rider_reviews_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rider_wallets`
--
ALTER TABLE `rider_wallets`
  ADD CONSTRAINT `rider_wallets_rider_id_foreign` FOREIGN KEY (`rider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rider_wallet_histories`
--
ALTER TABLE `rider_wallet_histories`
  ADD CONSTRAINT `rider_wallet_histories_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rider_wallet_histories_rider_wallet_id_foreign` FOREIGN KEY (`rider_wallet_id`) REFERENCES `rider_wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rides`
--
ALTER TABLE `rides`
  ADD CONSTRAINT `rides_ambulance_id_foreign` FOREIGN KEY (`ambulance_id`) REFERENCES `ambulances` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rides_cargo_image_id_foreign` FOREIGN KEY (`cargo_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rides_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rides_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rides_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rides_hourly_package_id_foreign` FOREIGN KEY (`hourly_package_id`) REFERENCES `hourly_packages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rides_peak_zone_id_foreign` FOREIGN KEY (`peak_zone_id`) REFERENCES `peak_zones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rides_rental_vehicle_id_foreign` FOREIGN KEY (`rental_vehicle_id`) REFERENCES `rental_vehicles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rides_ride_status_id_foreign` FOREIGN KEY (`ride_status_id`) REFERENCES `ride_status` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rides_rider_id_foreign` FOREIGN KEY (`rider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rides_service_category_id_foreign` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rides_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rides_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ride_bids`
--
ALTER TABLE `ride_bids`
  ADD CONSTRAINT `ride_bids_bid_id_foreign` FOREIGN KEY (`bid_id`) REFERENCES `bids` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_bids_ride_id_foreign` FOREIGN KEY (`ride_id`) REFERENCES `rides` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ride_preferences`
--
ALTER TABLE `ride_preferences`
  ADD CONSTRAINT `ride_preferences_preference_id_foreign` FOREIGN KEY (`preference_id`) REFERENCES `preferences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_preferences_ride_id_foreign` FOREIGN KEY (`ride_id`) REFERENCES `rides` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ride_requests`
--
ALTER TABLE `ride_requests`
  ADD CONSTRAINT `ride_requests_ambulance_id_foreign` FOREIGN KEY (`ambulance_id`) REFERENCES `ambulances` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_requests_cargo_image_id_foreign` FOREIGN KEY (`cargo_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_requests_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_requests_hourly_package_id_foreign` FOREIGN KEY (`hourly_package_id`) REFERENCES `hourly_packages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_requests_peak_zone_id_foreign` FOREIGN KEY (`peak_zone_id`) REFERENCES `peak_zones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_requests_rental_vehicle_id_foreign` FOREIGN KEY (`rental_vehicle_id`) REFERENCES `rental_vehicles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_requests_rider_id_foreign` FOREIGN KEY (`rider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_requests_service_category_id_foreign` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_requests_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_requests_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ride_request_drivers`
--
ALTER TABLE `ride_request_drivers`
  ADD CONSTRAINT `ride_request_drivers_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_request_drivers_ride_request_id_foreign` FOREIGN KEY (`ride_request_id`) REFERENCES `ride_requests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ride_request_preferences`
--
ALTER TABLE `ride_request_preferences`
  ADD CONSTRAINT `ride_request_preferences_preference_id_foreign` FOREIGN KEY (`preference_id`) REFERENCES `preferences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_request_preferences_ride_request_id_foreign` FOREIGN KEY (`ride_request_id`) REFERENCES `ride_requests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ride_request_zones`
--
ALTER TABLE `ride_request_zones`
  ADD CONSTRAINT `ride_request_zones_ride_request_id_foreign` FOREIGN KEY (`ride_request_id`) REFERENCES `ride_requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_request_zones_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ride_status`
--
ALTER TABLE `ride_status`
  ADD CONSTRAINT `ride_status_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ride_status_activities`
--
ALTER TABLE `ride_status_activities`
  ADD CONSTRAINT `ride_status_activities_ride_id_foreign` FOREIGN KEY (`ride_id`) REFERENCES `rides` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_status_activities_ride_request_id_foreign` FOREIGN KEY (`ride_request_id`) REFERENCES `ride_requests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ride_zones`
--
ALTER TABLE `ride_zones`
  ADD CONSTRAINT `ride_zones_ride_id_foreign` FOREIGN KEY (`ride_id`) REFERENCES `rides` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ride_zones_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_service_icon_id_foreign` FOREIGN KEY (`service_icon_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_service_image_id_foreign` FOREIGN KEY (`service_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD CONSTRAINT `service_categories_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_categories_service_category_image_id_foreign` FOREIGN KEY (`service_category_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_categories_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sos`
--
ALTER TABLE `sos`
  ADD CONSTRAINT `sos_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sos_sos_image_id_foreign` FOREIGN KEY (`sos_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sos_alerts`
--
ALTER TABLE `sos_alerts`
  ADD CONSTRAINT `sos_alerts_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sos_alerts_ride_id_foreign` FOREIGN KEY (`ride_id`) REFERENCES `rides` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sos_alerts_sos_id_foreign` FOREIGN KEY (`sos_id`) REFERENCES `sos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sos_alerts_sos_status_id_foreign` FOREIGN KEY (`sos_status_id`) REFERENCES `sos_statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sos_statuses`
--
ALTER TABLE `sos_statuses`
  ADD CONSTRAINT `sos_statuses_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sos_status_activities`
--
ALTER TABLE `sos_status_activities`
  ADD CONSTRAINT `sos_status_activities_ride_id_foreign` FOREIGN KEY (`ride_id`) REFERENCES `rides` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sos_status_activities_sos_alert_id_foreign` FOREIGN KEY (`sos_alert_id`) REFERENCES `sos_alerts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sos_zones`
--
ALTER TABLE `sos_zones`
  ADD CONSTRAINT `sos_zones_s_o_s_id_foreign` FOREIGN KEY (`s_o_s_id`) REFERENCES `sos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sos_zones_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `statuses`
--
ALTER TABLE `statuses`
  ADD CONSTRAINT `statuses_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `surge_prices`
--
ALTER TABLE `surge_prices`
  ADD CONSTRAINT `surge_prices_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taxes`
--
ALTER TABLE `taxes`
  ADD CONSTRAINT `taxes_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `testimonials_profile_image_id_foreign` FOREIGN KEY (`profile_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_priority_id_foreign` FOREIGN KEY (`priority_id`) REFERENCES `priorities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_ticket_status_id_foreign` FOREIGN KEY (`ticket_status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_referred_by_id_foreign` FOREIGN KEY (`referred_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_service_category_id_foreign` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD CONSTRAINT `vehicle_categories_service_category_id_foreign` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_categories_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_images`
--
ALTER TABLE `vehicle_images`
  ADD CONSTRAINT `vehicle_images_attachment_id_foreign` FOREIGN KEY (`attachment_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_images_vehicle_image_id_foreign` FOREIGN KEY (`vehicle_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_info`
--
ALTER TABLE `vehicle_info`
  ADD CONSTRAINT `vehicle_info_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_info_fleet_manager_id_foreign` FOREIGN KEY (`fleet_manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_info_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_info_docs`
--
ALTER TABLE `vehicle_info_docs`
  ADD CONSTRAINT `vehicle_info_docs_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_info_docs_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_info_docs_document_image_id_foreign` FOREIGN KEY (`document_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_info_docs_fleet_manager_id_foreign` FOREIGN KEY (`fleet_manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_info_docs_vehicle_info_id_foreign` FOREIGN KEY (`vehicle_info_id`) REFERENCES `vehicle_info` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_services`
--
ALTER TABLE `vehicle_services`
  ADD CONSTRAINT `vehicle_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_services_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_surge_prices`
--
ALTER TABLE `vehicle_surge_prices`
  ADD CONSTRAINT `vehicle_surge_prices_surge_price_id_foreign` FOREIGN KEY (`surge_price_id`) REFERENCES `surge_prices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_surge_prices_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_surge_prices_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  ADD CONSTRAINT `vehicle_types_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_types_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_types_vehicle_image_id_foreign` FOREIGN KEY (`vehicle_image_id`) REFERENCES `media` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_types_vehicle_map_icon_id_foreign` FOREIGN KEY (`vehicle_map_icon_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_type_hourly_packages`
--
ALTER TABLE `vehicle_type_hourly_packages`
  ADD CONSTRAINT `vehicle_type_hourly_packages_hourly_package_id_foreign` FOREIGN KEY (`hourly_package_id`) REFERENCES `hourly_packages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_type_hourly_packages_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_type_zones`
--
ALTER TABLE `vehicle_type_zones`
  ADD CONSTRAINT `vehicle_type_zones_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_type_zones_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_type_zones_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_type_zone_preferences`
--
ALTER TABLE `vehicle_type_zone_preferences`
  ADD CONSTRAINT `vehicle_type_zone_preferences_preference_id_foreign` FOREIGN KEY (`preference_id`) REFERENCES `preferences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_type_zone_preferences_vehicle_type_zone_id_foreign` FOREIGN KEY (`vehicle_type_zone_id`) REFERENCES `vehicle_type_zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD CONSTRAINT `withdraw_requests_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `withdraw_requests_driver_wallet_id_foreign` FOREIGN KEY (`driver_wallet_id`) REFERENCES `driver_wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `zones`
--
ALTER TABLE `zones`
  ADD CONSTRAINT `zones_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `zones_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
