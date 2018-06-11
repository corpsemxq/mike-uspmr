<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="USPMR App Page">
    <meta name="author" content="Coderthemes">

    <link rel="shortcut icon" href="https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/logo.jpg">
    <title>admin login</title>

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Josefin+Sans:400,600,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,500,700' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Cinzel" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Crimson+Text" rel="stylesheet">

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
            <a class="navbar-brand" href="#"><img src="https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/logoTrans.png" class="logo" alt="logo"></a>
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

<section>

    <div id="applicationForm">

        <div class="container">
    <br/>
    <br/>
    <br/>

        %{--Form body--}%
            <g:form controller="user" action="login"
                    class="form-horizontal contact-form">

                <h4 class="text-left"><mark>Please Login</mark></h4>


                <div class="form-group">
                    <label class="control-label">Username : </label>
                    <g:textField style="width: 70%" class="form-control" name="username"
                                 id="username"/>
                </div>
                    <g:if test="${usernameErrorMessage}">
                        <div class="error"
                             style="display: block;">${usernameErrorMessage}</div>
                    </g:if>
                    <div class="error" id="err-username"
                         style="display: none;">Please input username</div>

                <br/>
                <br/>

                <div class="form-group">
                    <label class="control-label">Password : </label>
                    <g:passwordField  style="width: 70%" class="form-control" name="password"
                                 id="password"/>
                </div>

                    <g:if test="${passwordErrorMessage}">
                        <div class="error"
                             style="display: block;">${passwordErrorMessage}</div>
                    </g:if>
                    <div class="error" id="err-password"
                             style="display: none;">Please input password</div>

                <div class="row">
                    <div class="col-xs-12">
                        <br/>
                        <br/>

                        <div class="text-center">
                            <g:actionSubmit class="btn btn-dark" action="login" value="Login" id="login"/>
                        </div>
                        <g:if test="${submitErrorMessage}">
                            <div class="error"
                                 style="display: block;">${submitErrorMessage}</div>
                        </g:if>

                    </div>

                </div>
                <br/>
                <br/>

            </g:form>
        </div>
    </div>
</section>
<br/>

<g:applyLayout name="footer"/>



<!-- js placed at the end of the document so the pages load faster -->
<script src="${resource(dir: 'js', file: 'jquery-2.1.4.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
<!-- Jquery easing -->
<script src="${resource(dir: 'js', file: 'jquery.easing.1.3.min.js')}"></script>

<!--common script for all pages-->
<script src="${resource(dir: 'js', file: 'jquery.app.js')}"></script>

</body>
</html>