<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>Navbar Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/summernote-bs3.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/clean-blog.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/jasny-bootstrap.min.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <div class="container">

        <!-- Static navbar -->
        <div class="navbar navbar-fixed-top navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="offcanvas" data-target=".navbar-offcanvas" data-canvas="body">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Project name</a>
                </div>
                <div class="navbar-offcanvas offcanvas">
                    <a class="navmenu-brand" href="index.jsp">Project name</a>
                    <ul class="nav navbar-nav pull-sm-right">
                        <li><a href="resume.html">Make a Resume</a></li>
                        <li><a href="#">Upgrade to Premium</a></li>
                        <li><a href="#">Import from LinkedIn</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>
    </div>
    <!-- /container -->
    <div class="clearfix"></div>

     <div class="home-banner full-screen-banner ">

        <div class="container full-screen-banner text-center vertically-center-content-wrapper">
            <div class="vertically-center-content-box">
            <h1 class="text-white">Offcanvas Navbar example</h1>
            <p class="lead text-white">This example demonstrates using the offcanvas plugin with the navbar.</p>
            <p class="h4 text-white">By default the navbar is show on the right side of the screen. You can show it on the left side instead by adding</p>
            
           
            <a href="jsonresume-flat" class="btn btn-lg btn-primary">Let's Start</a>
            </div>
        </div>



        </div>



    <div class="clearfix"></div>

    <section>
        <div class="container text-center" style="padding:120px 0px; color:#fff;">

            <h1>Offcanvas Navbar example</h1>
            <p>This example demonstrates using the offcanvas plugin with the navbar.</p>


        <p>
            By default the navbar is show on the right side of the screen. You can show it on the left side instead by adding
            <code>.navmenu-fixed-left</code>to the
            <code>.navbar-offcanvas</code>.
        </p>

        </div>
    </section>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jasny-bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-tabcollapse.js"></script>

    <script src="${pageContext.request.contextPath}/resources/js/summernote.min.js"></script>
    <script>
    $('#myTab').tabCollapse();

    </script>
</body>

</html>
