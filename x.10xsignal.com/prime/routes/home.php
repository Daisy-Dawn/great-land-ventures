<?php

use App\Http\Controllers\AutoTaskController;
use App\Http\Controllers\HomePageController;

if (version_compare(PHP_VERSION, '7.1.0', '>=')) {
    // Ignores notices and reports all other kinds... and warnings
    error_reporting(E_ALL ^ E_NOTICE ^ E_WARNING);
    // error_reporting(E_ALL ^ E_WARNING); // Maybe this is enough
}
   
//cron url
Route::get('/cron',[AutoTaskController::class, 'autotopup'])->name('cron');
//Front Pages Route
Route::get('/', [HomePageController::class, 'index'])->name('home');
Route::get('terms', [HomePageController::class, 'terms'] )->name('terms');
Route::get('privacy',[HomePageController::class, 'privacy'])->name('privacy');
Route::get('about', [HomePageController::class, 'about'])->name('about');
Route::get('contact',[HomePageController::class, 'contact'])->name('contact');
Route::get('faq', [HomePageController::class, 'faq'])->name('faq');
Route::get('crypto', function(){
    return view('home.crypto');
});

Route::get('etfs', function(){
    return view('home.etf');
});

Route::get('options', function(){
    return view('home.options');
});

Route::get('trade', function(){
    return view('home.trade');
});

Route::get('shares', function(){
    return view('home.shares');
});

Route::get('forex', function(){
    return view('home.forex');
});

Route::get('commodities', function(){
    return view('home.commodities');
});

Route::get('video-testimony', function(){
    return view('home.testimony');
});

