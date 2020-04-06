<html>
    <head>
        <title>
            @yield('title','laravelproject')
        </title>
    </head>
    <body>
       
        <ul>
            <li> <a href="/">Home</a></li>
            <li> <a href="/contact">Contact Page</a></li>
        </ul>
        @yield('content')

    </body>
</html>