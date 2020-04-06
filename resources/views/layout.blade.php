<!DOCTYPE html>
<html>
    <head>
        <title>
            @yield('title','laravelproject')
        </title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.css">
        </link>

        <style>
        .is-complete{
            text-decoration:line-through;
        }
        </style>
        
    </head>
    <body>
       
        <div class="container">
            @yield('content')

        </div>
       
    </body>
</html>