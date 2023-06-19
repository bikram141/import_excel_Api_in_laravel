<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\MovieController;


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
Route::group(['prefix' => 'v1'], function() {
Route::get('longest-duration-movies', [MovieController::class, 'longestdurationmovies']);
Route::post('new-movie', [MovieController::class, 'createmovies']);
Route::get('top-rated-movies', [MovieController::class, 'topratedmovies']);
Route::get('genre-movies-with-subtotals', [MovieController::class, 'genreMovies']);
Route::post('update-runtime-minutes', [MovieController::class, 'updateruntimeminutes']);
});