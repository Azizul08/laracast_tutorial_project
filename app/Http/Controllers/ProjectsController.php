<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Project;

use Mail;

use App\Mail\ProjectCreated;

class ProjectsController extends Controller
{
    
    public function __construct()
    
    {
        $this->middleware('auth');
    }

    public function index()
    {
        // $project= App\Project::all();

        // $projects= Project::all();
            // return $projects;

        // Get all the projects for the authenticated user
        $projects = Project::where('owner_id',auth()->id())->get();
        return view('projects.index',compact('projects'));

    }

    public function show($id)
    {
        $projectdata = Project::findOrFail($id);
        
        // if($projectdata->owner_id !== auth()->id()) {
        //     abort(403);
        // }

        // abort_if()

        $this->authorize('update',$projectdata);

        // abort_unless()
        // abort_unless(\Gate::allows('update',$projectdata),403);

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

        $project= Project::create([
            'title'=>request('title'),
            'description'=>request('description')
        ]+ ['owner_id' => auth()->id()]);

        // $project=new Project();
        
        // $project->title= request('title');
        // $project->description= request('description');

        // $project->save();
        
        // Mailables
        // Mail::to('m.azizulcse@gmail.com')->send(
        //     new ProjectCreated($project)
        //     );
        // $project->owner
        Mail::to($project->owner->email)->send(
            new ProjectCreated($project)
            );
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

     $this->authorize('update',$project);
     
     // $project->title= request('title');
     // $project->description= request('description');
     // $project->save();
     $project->update($this->validateProject());

     return redirect('/projects');

    }

    public function destroy($id)
    {
        // dd('hello');
        // Project::findOrFail($id)->delete();
        
         $project = Project::findOrFail($id);
         $this->authorize('update',$project);

         $project->delete();

        return redirect('/projects');
    }

    protected function validateProject()
    {
        return request()->validate([
            'title' => ['required','min:3'],
            'description' => ['required','min:3']
            ]);
    }
}
