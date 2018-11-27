<?php

//Route Auth
Auth::routes();
//-------------------

//Halaman Control
Route::get('/home' , 'HomeController@index');
Route::get('/' , 'HomeController@index');
//-------------------------------------------


Route::get('/user/area/{area}' , 'User\AreaController@store')->name('user.area.store');




