<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="/assets/framework/bootstrap-3.3.5/css/bootstrap.css">
    <link rel="stylesheet" href="/assets/css/app.css">
    <script type='text/javascript' src="/assets/js/app.js"></script>
    <title>Concert</title>
</head>

<body>
    <div class="wrapper">
        <nav class="navbar navbar-default navbar-fixed-top topBar">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-4">
                        <a href="/">
                            <div>
                                <img src="/assets/images/logo_codepi.png" height="34">
                                <span class="title-logo">CODEPI</span>
                            </div>
                        </a>
                    </div>
                    @if ( !Session::get('user') )
                        <div class="col-xs-7 col-xs-offset-1 loginSingnup">
                            <button class="btn buttonUser" onclick="window.location.href='/connexion'">Login</button>
                            &nbsp
                            <!-- <button class="btn buttonUser">Sign Up</button> -->
                        </div>
                    @else
                        <div class="col-xs-7 col-xs-offset-1 loginSingnup">
                            Welcome, {{Session::get('user') }}!      
                                <button class="btn buttonUser" onclick="window.location.href='{{ action('mainController@deConnexion') }}'">Logout</button>
                        </div>
                        
                    @endif
                    
                </div>
            </div>
        </nav>
        @yield('content')
        <nav class="navbar navbar-default navbar-static-bottom footBar">
            <div class="container-fluid">
                <span>Made by <i>Tianyu LU</i> @ France</span>
                <br>
                <a href="mailto:tianyu.lu89@gmail.com">tianyu.lu89@gmail.com</a>
            </div>
        </nav>
    </div>
</body>

</html>