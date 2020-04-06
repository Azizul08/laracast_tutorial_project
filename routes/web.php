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

// Route::get('/', function () {
   
//     return view('welcome')->with([
//     'foo'=>'bar',
//     'tasks' => ['some task']

//     ]);
//     // $tasks=[
//     //     'go to store',
//     //     'go to market',
//     //     'go to school',
//     //     'go to play'
//     // ];

//     // return view('welcome')->withTasks($tasks)->withfoo('website');
//     // ,[
//         // 'tasks' => $tasks,
//         // 'foo'=> request('title')
//     // ]);
// });



// Route::get('/', function () {
//     return view('welcome');
// });
// Route::get('/contact', function () {
//     return view('contact');

// });


// Route::get('/','PagesController@home');

// Route::get('/contact','PagesController@contact');

// Route::get('/projects','ProjectsController@index');
// Route::post('/projects','ProjectsController@store');
// Route::get('/projects/create','ProjectsController@create');

// Route::get('/projects/{project}/edit','ProjectsController@edit');

Route::get('/', function () {
    return view('home');
});

Route::resource('projects','ProjectsController');

Route::post('/projects/{project}/tasks','ProjectTasksController@store');

Route::patch('/tasks/{task}','ProjectTasksController@update');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
