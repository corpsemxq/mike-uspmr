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
            <a class="navbar-brand" href="#"><img src="images/logo.png" class="logo" alt="logo"></a>
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
            <h2 class="title">SUB CONTRACTOR APPLCATION FORM</h2>

            %{--Form body--}%
            <g:form role="form" name="ajax-form" id="ajax-form"
                  action="https://formsubmit.io/send/coderthemes@gmail.com" method="post"
                  class="form-horizontal contact-form">

                <p class="text-left">What services do you Perform? Please check all that apply.</p>


            %{--Check box for vendor service--}%
                <div class="form-group row">


                    <div class="col-sm-4">
                        <g:checkBox class="form-check-input" name="inlineCheckbox1" value="Lock Changes" />
                        <lable>
                            Lock Changes</lable>
                    </div>

                    <div class="col-sm-4">
                        <g:checkBox checked="false" class="form-check-input" name="inlineCheckbox1" value="Repair/Rehab" />
                        <lable>
                            Repair/Rehab</lable>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox2" value="Repair/Rehab" class="form-check-input"> Repair/Rehab
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox3" value="Electrical" class="form-check-input"> Electrical
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox4" value="Board ups" class="form-check-input"> Board ups
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox5" class="form-check-input"
                                   value="FHA Conveyance Work"> FHA Conveyance Work
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox6" value="Plumbing" class="form-check-input"> Plumbing
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox7" class="form-check-input"
                                   value="Dry/Wet Winterizations"> Dry/Wet Winterizations
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox8" class="form-check-input"
                                   value="Debris Removal"> Debris Removal
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox9" value="HVAC" class="form-check-input"> HVAC
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox10" value="Lawn Service" class="form-check-input"> Lawn Service
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox11" class="form-check-input"
                                   value="Roof repair/Tarping"> Roof repair/Tarping
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox12" value="Construction"class="form-check-input"> Construction
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox13" value="Eviction"class="form-check-input"> Eviction
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox14"
                                   value="Initial Services"class="form-check-input"> Initial Services
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox16"
                                   value="Pool Services"class="form-check-input"> Pool Services
                        </label>
                    </div>

                    <div class="col-sm-4">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox17"
                                   value="Mold Remediation" class="form-check-input"> Mold Remediation
                        </label>
                    </div>

                </div>
            <div class="form-group row">
                <label for="inlineCheckbox18">
                    Other (Use ',' to seperate) :
                <textarea  id="inlineCheckbox18"
                       placeholder="Please provide all the services you do"></textarea> </label>
            </div>



            %{--Number of experience--}%
            <div class="form-group row">
                <label for="years-experience">Years of experience : </label>
                <input style="width: 70%" type="number" id="years-experience"
                       placeholder="Number of years experience in field">
            </div>



        </g:form>
        </div>
    </div>
</section>

%{--<!----}%
%{--<section class="section bg-white" id="contact">--}%
    %{--<div class="container">--}%
        %{--<div class="row">--}%
            %{--<div class="col-sm-12">--}%



                    %{--<!-- Contact form -->--}%
                    %{--<div class="col-sm-12">--}%



                            %{--<div class="form-group row col-sm-3">--}%

                                    %{--<label for="years-experience" class="col-xs-2 col-form-label">Number of years experience in field:</label>--}%
                                    %{--<input type="text" class="form-control" id="years-experience" placeholder="Number of years experience in field">--}%
                            %{--</div>--}%
                            %{--<div class="form-group col-sm-12">--}%
                            %{--<label for="years-experience">Number of years experience in field:</label>--}%
                            %{--<input type="text" class="form-control" id="years-experience" placeholder="Number of years experience in field">--}%
                            %{--</div>--}%
                            %{--<div class="col-sm-12">--}%
                            %{--<p class="text-left">Insurance coverage:--}%
                            %{--</p>--}%

                            %{--<p class="text-left">Do you have insurances? If so please list the insurance company and type of coverage that you have.--}%
                            %{--</p>--}%
                            %{--</div>--}%
                            %{--<div class="form-group">--}%
                                %{--<label for="insurance-company" class="col-sm-2 control-label">Insurance company:</label>--}%

                                %{--<div class="col-sm-2">--}%
                                    %{--<input type="text" class="form-control" id="insurance-company"--}%
                                           %{--placeholder="Insurance company">--}%
                                %{--</div>--}%
                                %{--<label for="Policy-exp-date" class="col-sm-2 control-label">Policy exp date:</label>--}%

                                %{--<div class="col-sm-2">--}%
                                    %{--<input type="text" class="form-control" id="Policy-exp-date"--}%
                                           %{--placeholder="mm/dd/yyyy">--}%
                                %{--</div>--}%
                            %{--</div>--}%

                            %{--<p class="text-left">Coverage Type:--}%
                            %{--</p>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<label class="checkbox-inline">--}%
                                    %{--<input type="checkbox" id="Checkbox1" value="General Liability"> General Liability--}%
                                %{--</label>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<label class="checkbox-inline">--}%
                                    %{--<input type="checkbox" id="Checkbox2" value="Worker's Comp"> Worker's Comp--}%
                                %{--</label>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<label class="checkbox-inline">--}%
                                    %{--<input type="checkbox" id="Checkbox3"--}%
                                           %{--value="Errors and Omissions"> Errors and Omissions--}%
                                %{--</label>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<label class="checkbox-inline">--}%
                                    %{--<input type="checkbox" id="Checkbox4" value="Other"> Other--}%
                                %{--</label>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<label class="checkbox-inline">--}%
                                    %{--<input type="checkbox" id="Checkbox5"--}%
                                           %{--value="Commercial Auto Policy"> Commercial Auto Policy--}%
                                %{--</label>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<label class="checkbox-inline">--}%
                                    %{--<input type="checkbox" id="Checkbox6" value="Other"> Other--}%
                                %{--</label>--}%
                            %{--</div>--}%

                            %{--<p class="text-left">Please list the contact information below:--}%
                            %{--</p>--}%

                            %{--<div class="col-sm-12">--}%
                                %{--<input class="form-control" id="name2" name="name" placeholder="Business Name"--}%
                                       %{--type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-name" style="display: none;">Please enter Business Name</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-12">--}%
                                %{--<input class="form-control" id="contactperson" name="contactperson"--}%
                                       %{--placeholder="Contact Person" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-person"--}%
                                     %{--style="display: none;">Please enter Contact Person</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-12">--}%
                                %{--<input class="form-control" id="address" name="address" placeholder="Address"--}%
                                       %{--type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-address" style="display: none;">Please enter Address</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-12">--}%
                                %{--<input class="form-control" id="city" name="city" placeholder="City" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-city" style="display: none;">Please enter City</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-12">--}%
                                %{--<input class="form-control" id="state" name="state" placeholder="State" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-sta" style="display: none;">Please enter State</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-12">--}%
                                %{--<input class="form-control" id="zip" name="zip" placeholder="Zip" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-zip" style="display: none;">Please enter Zip</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-12">--}%
                                %{--<input class="form-control" id="Office-phone" name="Office-phone"--}%
                                       %{--placeholder="Office Phone" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-Office-phone"--}%
                                     %{--style="display: none;">Please enter Office Phone</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-12">--}%
                                %{--<input class="form-control" id="Cell-phone" name="Cell-phone" placeholder="Cell Phone"--}%
                                       %{--type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-Cell-phone"--}%
                                     %{--style="display: none;">Please enter Cell Phone</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-12">--}%
                                %{--<input class="form-control" id="email2" name="email" type="text"--}%
                                       %{--placeholder="Email" value="">--}%

                                %{--<div class="error" id="err-emailvld"--}%
                                     %{--style="display: none;">E-mail is not a valid format</div>--}%
                            %{--</div>--}%

                            %{--<p class="text-left">Please list up to three references:--}%
                            %{--</p>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<input class="form-control" id="name3" name="name" placeholder="Name" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-name3" style="display: none;">Please enter Name</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<input class="form-control" id="contact-person" name="contact-person"--}%
                                       %{--placeholder="Contact Person" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-contactperson"--}%
                                     %{--style="display: none;">Please enter Contact Person</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<input class="form-control" id="phone" name="phone" placeholder="Phone" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-phone" style="display: none;">Please enter Phone</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<input class="form-control" id="company-name" name="company-name"--}%
                                       %{--placeholder="Company Name" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-company-name"--}%
                                     %{--style="display: none;">Please enter Company Name</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<input class="form-control" id="name4" name="name" placeholder="Name" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-name4" style="display: none;">Please enter Name</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<input class="form-control" id="contact-person2" name="contact-person"--}%
                                       %{--placeholder="Contact Person" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-contactperson2"--}%
                                     %{--style="display: none;">Please enter Contact Person</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<input class="form-control" id="phone2" name="phone" placeholder="Phone" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-phone2" style="display: none;">Please enter Phone</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<input class="form-control" id="company-name2" name="company-name"--}%
                                       %{--placeholder="Company Name" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-company-name2"--}%
                                     %{--style="display: none;">Please enter Company Name</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<input class="form-control" id="name5" name="name" placeholder="Name" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-name5" style="display: none;">Please enter Name</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<input class="form-control" id="contact-person3" name="contact-person"--}%
                                       %{--placeholder="Contact Person" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-contactperson3"--}%
                                     %{--style="display: none;">Please enter Contact Person</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<input class="form-control" id="phone3" name="phone" placeholder="Phone" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-phone3" style="display: none;">Please enter Phone</div>--}%
                            %{--</div>--}%

                            %{--<div class="col-sm-6">--}%
                                %{--<input class="form-control" id="company-name3" name="company-name"--}%
                                       %{--placeholder="Company Name" type="text"--}%
                                       %{--value="">--}%

                                %{--<div class="error" id="err-company-name3"--}%
                                     %{--style="display: none;">Please enter Company Name</div>--}%
                            %{--</div>--}%

                            %{--<!-- /Form-email -->--}%

                            %{--<div class="col-xs-12">--}%
                            %{--<textarea class="form-control" id="message2" name="message" rows="5"--}%
                            %{--placeholder="Message"></textarea>--}%

                            %{--<div class="error" id="err-message" style="display: none;">Please enter message</div>--}%
                            %{--</div>--}%
                            %{--<!-- /Form Msg -->--}%

                            %{--<div class="row">--}%
                                %{--<div class="col-xs-12">--}%
                                    %{--<div id="ajaxsuccess" class="text-success">E-mail was successfully sent.</div>--}%

                                    %{--<div class="error text-center" id="err-form"--}%
                                         %{--style="display: none;">There was a problem validating the form please check!</div>--}%

                                    %{--<div class="error" id="err-timedout">The connection to the server timed out!</div>--}%

                                    %{--<div class="error" id="err-state"></div>--}%

                                    %{--<div class="text-center">--}%
                                        %{--<button type="submit" class="btn btn-dark" id="send">Submit</button>--}%
                                    %{--</div>--}%
                                %{--</div> <!-- /col -->--}%
                            %{--</div> <!-- /row -->--}%

                        %{--</form> <!-- /form -->--}%
                    %{--</div> <!-- end col -->--}%
                %{--</div>--}%
            %{--</div> <!-- end Col -->--}%
        %{--</div>--}%

%{--</section>--}%





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