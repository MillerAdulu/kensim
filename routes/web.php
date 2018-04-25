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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/blog', 'PostController@allPosts');

Route::get('/blog/{slug}', 'PostController@showPost');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/property', 'PropertyController@index');