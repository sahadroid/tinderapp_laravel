<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
//use App\Http\Controllers\PeopleController;
use App\Http\Controllers\PeopleController;

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
Route::get('/people', [PeopleController::class, 'index']);
Route::post('/people', [PeopleController::class, 'store']);
Route::get('/people/{id}', [PeopleController::class, 'show']);
Route::put('/people/{id}', [PeopleController::class, 'update']);
Route::delete('/people/{id}', [PeopleController::class, 'destroy']);

/*
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
*/


