

@extends('layout')

@section('content')
<h2>{{ $foo }} Web Site </h2>

  <ul>

{{-- <?php foreach ($tasks as $task):?>
<li><?=$task;?></li>
  <?php endforeach; ?> --}}

  @foreach ($tasks as $task)
<li>{{$task}}</li>
  @endforeach;

  </ul>
@endsection