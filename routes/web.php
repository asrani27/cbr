<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\KPAController;
use App\Http\Controllers\KPPController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\StokController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\BibitController;
use App\Http\Controllers\CiriController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\DaftarController;

use App\Http\Controllers\KorbanController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\PenyidikController;
use App\Http\Controllers\ValidasiController;
use App\Http\Controllers\PengajuanController;
use App\Http\Controllers\TersangkaController;
use App\Http\Controllers\LupaPasswordController;
use App\Http\Controllers\GantiPasswordController;
use App\Http\Controllers\KasusController;
use App\Http\Controllers\KepribadianController;
use App\Http\Controllers\SerahTerimaController;
use App\Http\Controllers\TesController;

Route::get('/', function () {
    if (Auth::check()) {
        if (Auth::user()->hasRole('superadmin')) {
            return redirect('superadmin');
        } elseif (Auth::user()->hasRole('user')) {
            return redirect('user');
        }
    }
    return redirect('/login');
});

Route::get('login', [LoginController::class, 'index'])->name('login');
Route::post('login', [LoginController::class, 'login']);
Route::get('daftar', [DaftarController::class, 'index']);
Route::post('daftar', [DaftarController::class, 'daftar']);
Route::get('lupa-password', [LupaPasswordController::class, 'index']);
Route::get('/reload-captcha', [LoginController::class, 'reloadCaptcha']);
Route::get('/logout', [LogoutController::class, 'logout']);


Route::group(['middleware' => ['auth', 'role:superadmin']], function () {
    Route::get('superadmin', [HomeController::class, 'superadmin']);
    Route::get('superadmin/gp', [GantiPasswordController::class, 'index']);
    Route::post('superadmin/gp', [GantiPasswordController::class, 'update']);
    Route::post('superadmin/sk/updatelurah', [HomeController::class, 'updatelurah']);

    Route::get('superadmin/user', [UserController::class, 'index']);
    Route::get('superadmin/user/create', [UserController::class, 'create']);
    Route::post('superadmin/user/create', [UserController::class, 'store']);
    Route::get('superadmin/user/edit/{id}', [UserController::class, 'edit']);
    Route::post('superadmin/user/edit/{id}', [UserController::class, 'update']);
    Route::get('superadmin/user/delete/{id}', [UserController::class, 'delete']);

    Route::get('superadmin/kepribadian', [KepribadianController::class, 'index']);
    Route::get('superadmin/kepribadian/create', [KepribadianController::class, 'create']);
    Route::post('superadmin/kepribadian/create', [KepribadianController::class, 'store']);
    Route::get('superadmin/kepribadian/edit/{id}', [KepribadianController::class, 'edit']);
    Route::post('superadmin/kepribadian/edit/{id}', [KepribadianController::class, 'update']);
    Route::get('superadmin/kepribadian/delete/{id}', [KepribadianController::class, 'delete']);

    Route::get('superadmin/ciri', [CiriController::class, 'index']);
    Route::get('superadmin/ciri/create', [CiriController::class, 'create']);
    Route::post('superadmin/ciri/create', [CiriController::class, 'store']);
    Route::get('superadmin/ciri/edit/{id}', [CiriController::class, 'edit']);
    Route::post('superadmin/ciri/edit/{id}', [CiriController::class, 'update']);
    Route::get('superadmin/ciri/delete/{id}', [CiriController::class, 'delete']);

    Route::get('superadmin/kasus', [KasusController::class, 'index']);
    Route::get('superadmin/kasus/create', [KasusController::class, 'create']);
    Route::post('superadmin/kasus/create', [KasusController::class, 'store']);
    Route::get('superadmin/kasus/edit/{id}', [KasusController::class, 'edit']);
    Route::post('superadmin/kasus/edit/{id}', [KasusController::class, 'update']);
    Route::get('superadmin/kasus/delete/{id}', [KasusController::class, 'delete']);
});

Route::group(['middleware' => ['auth', 'role:user']], function () {
    Route::get('user', [HomeController::class, 'user']);
    Route::post('user/tes', [TesController::class, 'store']);
    Route::get('user/tes/delete/{id}', [TesController::class, 'delete']);
    Route::get('user/hasil', [TesController::class, 'hasil']);
});
