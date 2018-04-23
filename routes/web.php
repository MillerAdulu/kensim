<?php

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

Route::get('/', function() {
    return view('welcome');
});

<<<<<<< Updated upstream
Route::get('/property', 'PropertyController@index');
Route::get('/property/create','PropertyController@create');
Route::post('/property/store','PropertyController@store');
Route::get('/type/create','TypeController@create');
Route::post('/type/store','TypeController@store');
Route::post('/search','PropertyController@searchResults');
Route::get('/search', 'PropertyController@search');

=======
Route::get('/staff/create', 'StaffController@create');

Route::post('/staff/store', 'StaffController@store');

Route::get('/staff', 'StaffController@index');
>>>>>>> Stashed changes
