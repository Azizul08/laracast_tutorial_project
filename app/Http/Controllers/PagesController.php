<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function home()
    {
        return view('welcome')->with([
                
                 'foo'=>'bar',
                 'tasks' => ['some task']
            
                 ]);
    }


    public function contact()
    {
        return view('contact');

    }

}
