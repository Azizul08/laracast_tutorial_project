@component('mail::message')
# Introduction

The body of your message.
#New Project: {{ $project->title}}
Project Description : {{ $project->description}}
@component('mail::button', ['url' =>('/projects/'.$project->id)])
View Project {{$foo}}
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
