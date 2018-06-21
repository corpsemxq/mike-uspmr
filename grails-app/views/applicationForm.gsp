<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="USPMR App Page">
    <meta name="author" content="Coderthemes">

    <link rel="shortcut icon" href="http://ec2-54-213-102-145.us-west-2.compute.amazonaws.com:8080/source/logo.jpg">
    <title>USPMR-Application</title>

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
            <a class="navbar-brand" href="#"><img src="http://ec2-54-213-102-145.us-west-2.compute.amazonaws.com:8080/source/logoTrans.png" class="logo" alt="logo"></a>
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
            %{--Form title--}%
            <h2 class="title">Vendor Application Form</h2>

        %{--Form body--}%
            <g:form controller="mailSend" action="applicationSend"
                    class="form-horizontal contact-form">

                <h4 class="text-left"><mark>What services do you Perform?</mark></h4>


            %{--Check box for vendor service--}%
                <div class="form-group">

                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="Lock Changes"/> Lock Changes</label>
                    </div>

                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="Repair/Rehab"/> Repair/Rehab</label>
                    </div>

                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="Electrical"/> Electrical</label>
                    </div>

                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="Board ups"/> Board ups</label>
                    </div>

                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="FHA Conveyance Work"/> FHA Conveyance Work</label>
                    </div>

                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="Plumbing"/> Plumbing</label>
                    </div>

                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="Dry/Wet Winterizations"/> Dry/Wet Winterizations</label>
                    </div>

                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="Debris Removal"/> Debris Removal</label>
                    </div>


                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="HVAC"/> HVAC</label>
                    </div>

                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="Lawn Service"/> Lawn Service</label>
                    </div>

                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="Roof repair/Tarping"/> Roof repair/Tarping</label>
                    </div>

                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="Construction"/> Construction</label>
                    </div>

                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="Eviction"/> Eviction</label>
                    </div>


                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="Initial Services"/> Initial Services</label>
                    </div>

                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="Pool Services"/> Pool Services</label>
                    </div>

                    <div class="col-sm-4">
                        <label class="control-label"><g:checkBox checked="false" name="vendorSercices"
                                                                 value="Mold Remediation"/> Mold Remediation</label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label">Other (Use ',' to seperate) :</label><g:textField style="width: 70%" id="inlineCheckbox18"
                                                                                          name="vendorSercices"
                                                                                          placeholder="Please provide all the services you do"/>
                </div>


                <br/>
                <br/>


                <h4 class="text-left"><mark>How many years of experience?</mark></h4>

            %{--Number of experience--}%
                <div class="form-group">
                    <label class="control-label">Years of experience :</label>
                    <g:textField style="width: 70%" class="form-control" name="yrsOfExperience"
                                 id="years-experience"/>
                </div>


                <br/>
                <br/>

                <h4 class="text-left"><mark>Insurance Detail : </mark></h4>
                <div class="form-group">
                    <label class="control-label">Insurance company :</label>
                    <g:textField style="width: 70%" class="form-control" name="insuranceDetail.insuranceCompany" id="insuranceCompany"/>
                </div>

                <div class="form-group">
                    <label class="control-label">Policy exp date:</label>
                    <g:datePicker class="form-control" style="width: 70%" precision="day" years="${2016..2200}" value="${new Date()}" name="insuranceDetail.expireDate" id="insuranceCompany"/>
                </div>

                <br/>

                <p>Coverage Type:</p>
                <div class="form-group">
                    <div class="col-sm-4">
                        <label class="control-label">
                            <g:checkBox checked="false" name="insuranceDetail.coverageArea" id="Checkbox1" value="General Liability"/> General Liability
                        </label>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">
                            <g:checkBox checked="false" name="insuranceDetail.coverageArea" id="Checkbox2" value="Worker's Comp"/> Worker's Comp
                        </label>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">
                            <g:checkBox checked="false" name="insuranceDetail.coverageArea" id="Checkbox3" value="Errors and Omissions"/> Errors and Omissions
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="control-label">
                            <g:checkBox checked="false" name="insuranceDetail.coverageArea" id="Checkbox5" value="Commercial Auto Policy"/> Commercial Auto Policy
                        </label>
                    </div>
                    <div class="col-sm-4">
                        <label class="control-label">
                            <g:checkBox checked="false" name="insuranceDetail.coverageArea" id="Checkbox4" value="Other"/> Other
                        </label>
                    </div>
                </div>

                <br/>
                <br/>


                <h4 class="text-left"><mark>Please list the contact information below:</mark></h4>
                <div class="form-group">
                    <label class="control-label">Business Name : </label>
                    <g:textField style="width: 70%" class="form-control" name="businessInfo.businessName" id="applicationBusinessName"/>
                    <div class="error" id="err-applicationBusinessName" style="display: none;">Please enter Business Name</div>
                </div>

                <div class="form-group">
                    <label class="control-label">Contact Person Name : </label>
                    <g:textField style="width: 70%" class="form-control" name="businessInfo.contactPerson" id="applicationName"/>
                    <div class="error" id="err-applicationName" style="display: none;">Please enter contact person name</div>
                </div>

                <div class="form-group">
                    <label class="control-label">Business Address : </label>
                    <g:textField style="width: 70%" class="form-control" name="businessInfo.businessAddress" id="businessAddress"/>
                </div>

                <div class="form-group">
                    <label class="control-label">Business City : </label>
                    <g:textField style="width: 70%" class="form-control" name="businessInfo.businessCity" id="businessCity"/>
                </div>

                <div class="form-group">
                    <label class="control-label">Business State : </label>
                    <g:textField style="width: 70%" class="form-control" name="businessInfo.businessState" id="businessState"/>
                </div>

                <div class="form-group">
                    <label class="control-label">Zip Code : </label>
                    <g:textField style="width: 70%" class="form-control" name="businessInfo.businessZip" id="businessZipcode"/>
                </div>

                <div class="form-group">
                    <label class="control-label">Office Phone Number : </label>
                    <g:textField style="width: 70%" class="form-control" name="businessInfo.businessPhone" id="officePhone"/>
                </div>

                <div class="form-group">
                    <label class="control-label">Contact Cell Phone : </label>
                    <g:textField style="width: 70%" class="form-control" name="businessInfo.contactPhone" id="applicationCellNumber"/>
                    <div class="error" id="err-applicationCellNumber" style="display: none;">Please enter contact cell Phone</div>
                </div>

                <div class="form-group">
                    <label class="control-label">Email : </label>
                    <g:textField style="width: 70%" class="form-control" id="applicationEmail" name="businessInfo.contactEmail" type="text"
                           placeholder="Email" value=""/>

                    <div class="error" id="err-applicationEmail"
                         style="display: none;">E-mail is not a valid format</div>
                </div>


                <br/>
                <br/>

                <h4 class="text-left"><mark>Please list up to three references:</mark></h4>
%{--reference 1--}%
                <p>Reference 1</p>

                <div class="form-group">
                <g:textField style="width: 70%" name="reference1.name" class="form-control" id="applicationReferName"  placeholder="Name" type="text"
                           value=""/>
                    <div class="error" id="err-applicationReferName" style="display: none;">Please enter at least one reference name</div>
                </div>
                <div class="form-group ">
                <g:textField style="width: 70%" name="reference1.companyName" class="form-control" id="applicationReferCompanyName" placeholder="Company Name" type="text"
                           value=""/>
                    <div class="error" id="err-applicationReferCompanyName" style="display: none;">Please enter at least one company name</div>
                </div>
                <div class="form-group ">
                    <g:textField style="width: 70%" name="reference1.phoneNumber" class="form-control" id="reference1.companyName" placeholder="Contact Number" type="text"
                                 value=""/>
                </div>

            %{--reference 2--}%
                <p>Reference 2</p>

                <div class="form-group">
                    <g:textField style="width: 70%" name="reference2.name" class="form-control" id="reference2.name"  placeholder="Name" type="text"
                                 value=""/>
                    <div class="error" id="err-name3" style="display: none;">Please enter Name</div>
                </div>
                <div class="form-group ">
                    <g:textField style="width: 70%" name="reference2.companyName" class="form-control" id="reference2.companyName" placeholder="Company Name" type="text"
                                 value=""/>
                    <div class="error" id="err-contactperson" style="display: none;">Company Name</div>
                </div>
                <div class="form-group ">
                    <g:textField style="width: 70%" name="reference2.phoneNumber" class="form-control" id="reference2.companyName" placeholder="Contact Number" type="text"
                                 value=""/>
                    <div class="error" id="err-contactperson" style="display: none;">Contact Number</div>
                </div>



            %{--reference 3--}%
                <p>Reference 3</p>

                <div class="form-group">
                    <g:textField style="width: 70%" name="reference3.name" class="form-control" id="reference3.name"  placeholder="Name" type="text"
                                 value=""/>
                    <div class="error" id="err-name3" style="display: none;">Please enter Name</div>
                </div>
                <div class="form-group ">
                    <g:textField style="width: 70%" name="reference3.companyName" class="form-control" id="reference3.companyName" placeholder="Company Name" type="text"
                                 value=""/>
                    <div class="error" id="err-contactperson" style="display: none;">Company Name</div>
                </div>
                <div class="form-group ">
                    <g:textField style="width: 70%" name="reference3.phoneNumber" class="form-control" id="reference3.companyName" placeholder="Contact Number" type="text"
                                 value=""/>
                </div>


                <div class="row">
                    <div class="col-xs-12">
                        <div id="contactSuccess" style="display: none;" class="text-success">The applicant was successfully sent.</div>

                        <div class="error text-center" id="err-applicationForm"
                             style="display: none;">There was a problem validating the application form please check!</div>

                        <div class="contactError" style="display: none;" id="err-applicationTimeout">The connection to the server timed out!</div>

                        <div class="contactError" id="err-applicationState"></div>
                        <br/>
                        <br/>

                        <div class="text-center">
                            <g:actionSubmit class="btn btn-dark" action="applicationSend" value="Submit Your Information" id="applicationSend"/>
                        </div>
                    </div> <!-- /col -->
                </div> <!-- /row -->

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