<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Responsive bootstrap landing template">
    <meta name="author" content="Coderthemes">

    <link rel="shortcut icon" href="images/favicon.ico">

    <title>Metrico - Responsive Multipurpose Landing Page Template</title>

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Josefin+Sans:400,600,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,500,700' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">

<link href="${resource(dir: 'css', file: 'icons.css')}" rel="stylesheet">
<link href="${resource(dir: 'css', file: 'icons-social.css')}" rel="stylesheet">
<link href="${resource(dir: 'css', file: 'flaticon.css')}" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${resource(dir: 'css', file: 'style.css')}" rel="stylesheet">

<!--[if lt IE 9]>
<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<body style="padding-top: 50px;">

<nav class="navbar navbar-default navbar-custom navbar-fixed-top sticky">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img src="https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/logoBig.jpg" class="logo" alt="logo"></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <ul class="nav navbar-nav navbar-right">
                <li><a href="${createLink(controller: "page", action: "homePage")}" class="scroll">Back to home page</a>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>




<section class="section">
    <h2 class="text-center">${category}</h2>
    <br/>


    <div class="container">
        <div class="row">
            <div class="tabbable tabs-left">
                <ul class="nav nav-tabs">
            <g:each in="${services}" var="service">
                <li><a href="#${service?.key?.replace(" ","")?.replace('/', '')}" data-toggle="tab">${service?.key}</a></li>
            </g:each>
            </ul>

                <div class="tab-content">

                    <g:each in="${services}" var="service">

                        <div class="tab-pane" id="${service?.key?.replace(" ","")?.replace('/', '')}">
                            <br/>

                            <div class="col-sm-12 col-sm-offset-3">
                                <img class="img-rounded" width="50%" src="${servicePic."${service?.key}"}">
                            </div>
                            <br/>

                            <div class="col-sm-4 col-sm-offset-5">
                                <h3>${service?.key}</h3>
                            </div>
                            <br/>



                            <div class="col-sm-10 col-sm-offset-1">
                                <blockquote style="background-color: #ededf5">
                                    <p>${service?.value}</p>
                                </blockquote>
                            </div>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <br/>
                            <ul class="nav nav-list">
                                <li class="divider"></li>
                            </ul>
                        </div>

                    </g:each>
                </div>
            </div>
        </div>
    </div>
</section>



<g:applyLayout name="footer"/>

</body>




<!-- js placed at the end of the document so the pages load faster -->
<script src="${resource(dir: 'js', file: 'jquery-2.1.4.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
<!-- Jquery easing -->
<script src="${resource(dir: 'js', file: 'jquery.easing.1.3.min.js')}"></script>

<!--common script for all pages-->
<script src="${resource(dir: 'js', file: 'jquery.app.js')}"></script>

</body>
</html>