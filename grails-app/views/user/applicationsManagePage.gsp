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

<g:applyLayout name="adminHeader"/>

<section>
    <div class="container">
        <br/>
        <br/>
        <br/>
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th>Company</th>
                <th>Name</th>
                <th>Date Created</th>
                <th>Application Type</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Active</th>
                %{--<th>Services</th>--}%
                <th></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${appList}" var="appOne">
                <tr>
                    <td style="width: 150px"><small>${appOne.businessInfo.businessName}</small></td>
                    <td style="width: 150px"><small>${appOne.applicant.firstName} ${appOne.applicant.lastName}</small></td>
                    <td style="width: 250px"><small>${appOne.dateCreated}</small></td>
                    <td><small>${appOne.appType}</small></td>
                    <td style="width: 250px"><small>${appOne.applicant.email}</small></td>
                    <td><small>${appOne.applicant.mobile}</small></td>
                    <td><small>${appOne.active ? "YES" : "NO"}</small></td>
                    %{--<td><small>--}%
                            %{--<g:each in="${appOne.businessInfo.services}" var='serviceOne'>--}%
                                %{--<p>${serviceOne}</p>--}%
                            %{--</g:each>--}%
                            %{--<g:each in="${appOne.businessInfo.otherServices}" var='otherServiceOne'>--}%
                                %{--<p>${otherServiceOne}</p>--}%
                            %{--</g:each>--}%
                        %{--</small>--}%
                    %{--</td>--}%
                    <td style="width: 300px;">
                        <div style="display: inline-block">
                            <button onclick="window.location.href='${createLink(controller: 'admin', action: 'applicationDetail', params: [uuidOne : appOne.uuid])}'" class="btn btn-default">Detail</button>
                        </div>
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