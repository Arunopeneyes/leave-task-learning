<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RegistrationController;
use App\Http\Controllers\AddleaveController;
use App\Models\Addleave;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});



Route::post('/leave', [AddleaveController::class, 'store']);


Route::post('/login', [RegistrationController::class, 'login']);
Route::post('/registration', [RegistrationController::class, 'store']);
//Route::post('/addleave',[RegistrationController::class,'addleave'])->middleware('auth');


Route::middleware('auth:api')->group(function () {
    Route::post('/addupdateleave/{id?}', [RegistrationController::class, 'addleave']);
    Route::get('/getlist/{is_upcoming?}', [RegistrationController::class, 'getlist']);
    Route::get('/delete/{id}', [RegistrationController::class, 'delete']);
    Route::get('/getdata/{id}', [RegistrationController::class, 'getdata']);
    Route::get('/absent', [RegistrationController::class, 'todayabsent']);
    Route::get('/upcomingleave', [RegistrationController::class, 'upcomingleave']);
    Route::get('/absent', [RegistrationController::class, 'todayabsent']);
});