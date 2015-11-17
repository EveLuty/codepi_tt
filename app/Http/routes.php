<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'mainController@index');
Route::get('concert/{concert}', 'concertController@show');
Route::get('connexion', 'mainController@toConnexion');
Route::get('deconnexion', 'mainController@deConnexion');

Route::get('login', 'mainController@connexion');

Route::get('admin/{concert}', 'concertController@edit');
Route::get('admin', 'concertController@create');

Route::get('update/{concert}', 'concertController@update');
Route::get('delete/{concert}', 'concertController@destroy');
Route::get('create', 'concertController@store');


Route::get('filter','mainController@filter');


