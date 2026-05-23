<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Repositories\Front\HomeRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    public $repository;

    public function __construct(HomeRepository $repository)
    {
        $this->repository = $repository;
    }

    public function index()
    {
        $settings = getSettings();
        
        $externalEnable = isset($settings['general']['external_frontend_enable']) && $settings['general']['external_frontend_enable'];
        $externalUrl = $settings['general']['external_frontend_url'] ?? '';
        
        if ($externalEnable && filter_var($externalUrl, FILTER_VALIDATE_URL)) {
            return redirect()->away($externalUrl);
        }
        
        $frontendEnable = isset($settings['general']['frontend_enable']) ? (bool) $settings['general']['frontend_enable'] : true;
        if (!$frontendEnable) {
            if (auth()->check()) {
                return redirect()->route('admin.dashboard.index');
            }
            return redirect()->route('login');
        }
        
        return $this->repository->index();
    }

    public function setTheme(Request $request)
    {
        Session::put('front_theme', $request->input('theme'));
        return response()->json(['success' => true]);
    }
}
