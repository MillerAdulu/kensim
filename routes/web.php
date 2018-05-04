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

/*Route::get('/', function () {
    return view('welcome');

});*/

Route::get('/', function () {
    return view('index');
});
Route::get('/contactus', function () {
    return view('contactus');
    });
Route::get('about-us', function () {
    return view('aboutus');

Route::get('property', function () {
        return view('property');
    });
});


Route::get('/blog', 'PostController@allPosts');

Route::get('/blog/{slug}', 'PostController@showPost');

Route::get('/property', 'PropertyController@index');

Route::get('/property/{id}', 'PropertyController@show');



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});