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


<section class="section-lg" >
    <div class="wrapper wrapper-content animated fadeIn">
        <div class="row">
            <div class="col-lg-12 ">
                <div class="ibox float-e-margins">
                    <div class="ibox-content table-responsive">
                        <h2>Application ID: ${appOne.uuid}</h2>
                        <br>

                        <table class="table">
                            <thead>
                            <tr>
                                <th><small>First Name</small></th>
                                <th><small>Last Name</small></th>
                                <th><small>Type</small></th>
                                <th><small>Created At</small></th>
                                <th><small>Updated At</small></th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><small>${appOne.applicant.firstName}</small></td>
                                <td><small>${appOne.applicant.lastName}</small></td>
                                <td><small>${appOne.appType}</small></td>
                                <td><small>${appOne.dateCreated}</small></td>
                                <td><small>${appOne.dateUpdated}</small></td>

                                <td>
                                    <div>
                                        <form method="POST" action="/loanApplication/resendOffersEmail">
                                            <input type="hidden" name="id" value="{{{ $loan['uuid'] }}}">
                                            <button type="submit" value="resend" class="btn btn-primary">Edit</button>
                                        </form>
                                    </div>
                                </td>

                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="ibox">
                %{--<div class="ibox-title">--}%
                    %{--<h5>Loan Application Details:</h5>--}%
                        %{--<span class="label label-danger">Unsubscribed</span>--}%
                    %{--<div class="ibox-tools">--}%
                        %{--<a class="collapse-link">--}%
                            %{--<i class="fa fa-chevron-up"></i>--}%
                        %{--</a>--}%
                    %{--</div>--}%
                %{--</div>--}%
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-lg-12"><h4>Business Info</h4></div>
                    </div>
                <br>

                <div class="row">
                        <div class="col-lg-6"><label class="col-sm-5 control-label">Business Name</label>
                            <div class="col-sm-6">${appOne.businessInfo.businessName}</div>
                        </div>
                        <div class="col-lg-6"><label class="col-sm-5 control-label">Business Phone</label>
                            <div class="col-sm-6">${appOne.businessInfo.businessPhone}</div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6"><label class="col-sm-5 control-label">Business Address</label>
                            <div class="col-sm-6">${appOne.businessInfo.businessAddress}</div>
                        </div>
                        <div class="col-lg-6"><label class="col-sm-5 control-label">Business City</label>
                            <div class="col-sm-6">${appOne.businessInfo.businessCity}</div>
                        </div>

                    </div>


                    <div class="row">
                        <div class="col-lg-6"><label class="col-sm-5 control-label">Business State</label>
                            <div class="col-sm-6">${appOne.businessInfo.businessState}</div>
                        </div>
                        <div class="col-lg-6"><label class="col-sm-5 control-label">Business Zip</label>
                            <div class="col-sm-6">${appOne.businessInfo.businessZip}</div>
                        </div>
                    </div>

                    <div class="row">

                        <div class="col-lg-6"><label class="col-sm-5 control-label">Services</label>
                            <div class="col-sm-6">
                                <g:each in="${appOne.businessInfo.services}" var = "servicesOne">
                                    <p>${servicesOne} </p>
                                </g:each>
                                <g:each in="${appOne.businessInfo.otherServices}" var = "otherServicesOne">
                                    <p>${otherServicesOne} </p>
                                </g:each>
                            </div>
                        </div>
                    </div>

                <br>
                <br>
                    <div class="row">
                        <div class="col-lg-12"><h4>Insurance Detail:</h4></div>
                    </div>
                <br>

                <div class="row">
                        <div class="col-lg-6"><label class="col-sm-5 control-label">Coverage Type</label>
                            <div class="col-sm-6">
                                <g:each in="${appOne.insuranceDetail.coverageType}" var = "coverageOne">
                                    <p>${coverageOne} </p>
                                </g:each>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6"><label class="col-sm-5 control-label">Insurance Company</label>
                            <div class="col-sm-6">${appOne.insuranceDetail.insuranceCompany}</div>
                        </div>
                        <div class="col-lg-6"><label class="col-sm-5 control-label">Expire Date</label>
                            <div class="col-sm-6">${appOne.insuranceDetail.expireDate}</div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6"><label class="col-sm-5 control-label">CoverageState</label>
                            <div class="col-sm-6">
                                <g:each in="${appOne.insuranceDetail.coverageState}" var = "stateOne">
                                    <p>${stateOne} </p>
                                </g:each>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</section>


<!-- js placed at the end of the document so the pages load faster -->
<script src="${resource(dir: 'js', file: 'jquery-2.1.4.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
<!-- Jquery easing -->
<script src="${resource(dir: 'js', file: 'jquery.easing.1.3.min.js')}"></script>

<!--common script for all pages-->
<script src="${resource(dir: 'js', file: 'jquery.app.js')}"></script>

</body>
</html>