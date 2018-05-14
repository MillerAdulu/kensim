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
Route::get('/', 'PropertyController@home');

Route::get('/contact-us', 'ContactController@show');

Route::post('/contact-us', 'ContactController@submit');

Route::get('about-us', 'PropertyController@getAbout');

Route::get('/blog', 'PostController@allPosts');

Route::get('/blog/{slug}', 'PostController@showPost');

Route::post('/blog/search', 'PostController@search');

Route::get('/property', 'PropertyController@index');

Route::get('/property/{id}', 'PropertyController@show');

Route::post('/property/search', 'PropertyController@search');

Route::post('/search', 'PropertyController@advancedSearch');

Route::group(['prefix' => 'admin'], function () {
  Voyager::routes();
});