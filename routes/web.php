<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\RatingController;

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
//movie
Route::get('importExportView', [MovieController::class, 'importExportView'])->name('importExportView');
Route::post('import', [MovieController::class, 'import'])->name('import');
Route::get('movie_list', [MovieController::class, 'movie_list'])->name('movie_list');
//rating
Route::get('ratingView', [RatingController::class, 'importExportView'])->name('ratingView');
Route::post('ratingimport', [RatingController::class, 'import'])->name('ratingimport');
Route::get('rating_list', [RatingController::class, 'rating_list'])->name('rating_list');