<?php


Route::get('/user','UserRegisterController@index');
Route::post('/user','UserRegisterController@register')->name('user.registration.form');

Route::get('/data','ShowDataController@index')->name('user.datatable');