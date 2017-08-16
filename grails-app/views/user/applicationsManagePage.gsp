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
                <li>
                   Hello Admin! You can <button onclick="window.location.href='${createLink(controller: "page", action: "adminLoginPage")}'" class="btn btn-danger">LOGOUT</button>
                </li>

            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<section>
    <div class="container">
        <br/>
        <br/>
        <br/>
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th>appId</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Application Type</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Services</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${appList}" var="appOne">
                <tr>
                    <td>${appOne.uuid}</td>
                    <td>${appOne.applicant.firstName}</td>
                    <td>${appOne.applicant.lastName}</td>
                    <td>${appOne.appType}</td>
                    <td>${appOne.applicant.email}</td>
                    <td>${appOne.applicant.mobile}</td>
                    <td>
                        <g:each in="${appOne.businessInfo.services}" var='serviceOne'>
                            <p>${serviceOne}</p>
                        </g:each>
                        <g:each in="${appOne.businessInfo.otherServices}" var='otherServiceOne'>
                            <p>${otherServiceOne}</p>
                        </g:each>
                    </td>
                    <td style="width: 150px;">
                        <div style="display: inline-block">
                            <button onclick="window.location.href=''" class="btn btn-success">Achive</button>
                        </div>
                        <div style="display: inline-block">
                            <button onclick="window.location.href=''" class="btn btn-info">Edit</button>
                        </div>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
        <div>
            <g:if test="${pageNumber!=1}">
                <div style="display: inline-block">
                    <button onclick="window.location.href='${createLink(controller: "admin", action: "index")}'" class="btn btn-primary">Previous Page</button>
                </div>
            </g:if>
            <g:else>
                <div style="display: inline-block">
                    <button class="btn">Previous Page</button>
                </div>
            </g:else>
            <div style="display: inline-block">
                   <p class="d-block">   ${pageNumber}   </p>
            </div>
            <g:if test="${pageNumber!=1}">
                <div style="display: inline-block">
                    <button onclick="window.location.href='${createLink(controller: "admin", action: "index")}'" class="btn btn-primary">Next Page</button>
                </div>
            </g:if>
            <g:else>
                <div style="display: inline-block">
                    <button class="btn">Next Page</button>
                </div>
            </g:else>
        </div>
</section>
<br/>




<!-- js placed at the end of the document so the pages load faster -->
<script src="${resource(dir: 'js', file: 'jquery-2.1.4.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
<!-- Jquery easing -->
<script src="${resource(dir: 'js', file: 'jquery.easing.1.3.min.js')}"></script>

<!--common script for all pages-->
<script src="${resource(dir: 'js', file: 'jquery.app.js')}"></script>

</body>
</html>