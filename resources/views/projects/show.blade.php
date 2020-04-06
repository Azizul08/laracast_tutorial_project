@extends('layout')

@section('content')
    <h1 class="title">{{ $projectdata->title}} </h1>

    <div class="content">
    	{{ $projectdata->description }}
    	 <p><a href="/projects/{{ $projectdata->id }}/edit">Edit</a></p>
    </div>

   
    @if($projectdata->tasks->count())
    <div class="box">
    	@foreach($projectdata->tasks as $task)
    	<div>
    		<form method="POST" action="/tasks/{{$task->id}}">
    			@method('PATCH')
    			@csrf
    			<label class="checkbox {{ $task->completed ? 'is-complete': ''}}"  for="completed">
    			<input type="checkbox" name="completed" onChange="this.form.submit()" {{$task->completed ? 'checked':''}}>
    	        {{ $task->description }}
    	    	</label>
    	    </form>
    	</div>	
    	@endforeach
    </div>
    @endif

   <form method="POST" action="/projects/{{ $projectdata->id}}/tasks" class="box">
   	 	@csrf
   		<div class="field">
   			<label class="label" for="description">New Task</label>

   			<div class="control">
   				<input type="text" class="input" name="description" placeholder="New Task" required="required">
   			</div>
   		</div>

   		<div class="field">

   			<div class="control">
   				<button type="submit" class="button is-link">Add Task</button>
   			</div>
   		</div>

   		@include('projects.errors')
   </form> 

@endsection