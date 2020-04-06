<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Project;

class ProjectsController extends Controller
{
    public function index()
    {
        // $project= App\Project::all();

        $projects= Project::all();
            // return $projects;

        return view('projects.index',compact('projects'));

    }

    public function show($id)
    {
        $projectdata = Project::findOrFail($id);
        return view('projects.show',compact('projectdata'));
    }


    public function create()
    {
        return view('projects.create');
    }


    public function store()
    {
        // return request()->all();

        request()->validate([
            'title' => ['required', 'min:3' , 'max:32'],
            'description' => ['required', 'min:3']
            ]);

        Project::create([
            'title'=>request('title'),
            'description'=>request('description')
        ]);

        // $project=new Project();
        
        // $project->title= request('title');
        // $project->description= request('description');

        // $project->save();

return redirect('/projects');

    }
    
    public function edit($id)
    {
        // return $id;
        //  return view('projects.edit');

        $projectdata = Project::findOrFail($id);
        return view('projects.edit',compact('projectdata'));
    }

    // public function edit(Project $projectdata)
    // {
        

    //     // $projectdata = Project::findOrFail($id);
    //     return view('projects.edit',compact('projectdata'));
    // }


    public function update($id)
    {
     // dd('hello');
     // dd(request()->all());
     
     $project = Project::findOrFail($id);
     
     $project->title= request('title');
     $project->description= request('description');

     $project->save();

     return redirect('/projects');

    }

    public function destroy($id)
    {
        // dd('hello');
        // Project::findOrFail($id)->delete();
         $project = Project::findOrFail($id);
         $project->delete();

        return redirect('/projects');
    }
}
