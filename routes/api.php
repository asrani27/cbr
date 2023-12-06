<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RestController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['middleware' => 'auth:sanctum'], function () {
    Route::get('/user', [RestController::class, 'user']);
    Route::post('/gantipassword', [RestController::class, 'gantipassword']);
    Route::post('/tambah', [RestController::class, 'tambahCiri']);
    Route::get('/deleteciri/{id}', [RestController::class, 'deleteCiri']);
    Route::get('/checkhasil', [RestController::class, 'checkHasil']);
});
Route::post('/login', [RestController::class, 'login']);
Route::post('/register', [RestController::class, 'register']);
Route::get('/ciri', [RestController::class, 'ciri']);
