<?php

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Symfony\Contracts\Service\Attribute\Required;
use App\Http\Controllers\apitestcontroller;

use App\Http\Controllers\RegisterController;
use App\Http\Controllers\API\BaseController;


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('/posts', [apitestcontroller::class, 'index']);
Route::post('/posts', [apitestcontroller::class, 'store']);
Route::post('/posts/new', [apitestcontroller::class, 'updateevery10']);
Route::put('/posts/{post}', [apitestcontroller::class, 'update']);
route::delete('/posts/{post}', [apitestcontroller::class, 'delete']);
Route::post('register', [RegisterController::class, 'register']);
Route::post('login', [RegisterController::class, 'login']);
     
Route::middleware('auth:sanctum')->group( function () {
    Route::resource('products', ProductController::class);
});