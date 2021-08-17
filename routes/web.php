<?php

use App\Http\Controllers\AntrianofflineController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\LamaController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('index');
// });


Route::get('/', [AntrianofflineController::class, 'index'])->name('index');
Route::get('/lama', [AntrianofflineController::class, 'lama'])->name('lama');
Route::get('/printlama', [AntrianofflineController::class, 'printlama'])->name('printlama');
Route::get('/baru', [AntrianOfflineController::class, 'baru'])->name('baru');
Route::post('/createlama', [AntrianOfflineController::class, 'createlama'])->name('createlama');
