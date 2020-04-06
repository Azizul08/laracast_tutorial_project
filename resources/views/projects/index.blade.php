
@extends('layout')

@section('content')
    <h1 class="title">Projects</h1>

    <ul>
        @foreach ($projects as $pro)
        <li>
        <a href="/projects/{{ $pro->id }}">
         {{$pro->title }}
        </a>
        </li> 
        @endforeach
    </ul>

@endsection


