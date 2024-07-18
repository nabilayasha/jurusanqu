<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\TestController;
use Illuminate\Support\Facades\DB;
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

Route::get('/', function () {
    return view('welcome');
});

Route::get('test', [TestController::class, 'index'])->name('test');
Route::post('test', [TestController::class, 'store']);

Route::get('/form', function () {
    $data['kelas'] = DB::table('kelas')->get()->all();
    return view('form', $data);
});

Route::post('/store-biodata', [TestController::class, 'storeBiodata']);
Route::get('/get-pertanyaan', [TestController::class, 'getPertanyaan']);
Route::post('/auth', [LoginController::class, 'auth']);

Route::get('/result', function () {
    return view('result');
});

Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

Route::get('/login', function () {
    return view('login');
})->name('login');

Route::get('/logout', function () {
    session()->flush();
    return redirect('/');
});