@extends('layout')

@section('content')
    <h1 class="title">Edit Project</h1>

<form method="POST" action="/projects/{{$projectdata->id}}" style="margin-bottom: 1em;">
    {{ method_field('PATCH') }}
    {{ csrf_field() }}

        <div class="field">
            <label class="label" for="title">Title</label>
                <div class="control">
                <input type="text" class="input" name="title" placeholder="Title" value="{{ $projectdata->title }}">
                </div>
        </div>

        <div class="field">
                <label class="label" for="description">Description</label>
                    <div class="control">
                        <textarea class="textarea" name="description">{{ $projectdata->description }}</textarea>
                    </div>
        </div>


        <div class="field">
                    
                    <div class="control1">
                        <button type="submit" class="button is-link">Update Project</button>
                    </div>
        </div>

        @include('projects.errors')
   
                            
    </form>

    <form method="post" action="/projects/{{$projectdata->id}}" >
                    <!-- {{ method_field('DELETE') }}
                    {{ csrf_field() }} -->

                    @method('DELETE')
                    @csrf 
                    <div class="field">
                       
                            <div class="control">
                                <button type="submit" class="button">Delete Project</button>
                            </div>
                    </div>
    </form> 
    
    

@endsection