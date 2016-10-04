<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="USPMR Home Page">
    <meta name="author" content="Coderthemes">

    <link rel="shortcut icon" href="https://s3-us-west-2.amazonaws.com/elasticbeanstalk-us-west-2-131173766494/uspmr/logo.jpg">
    <title>USPMR-Home</title>

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

<g:applyLayout name="header"/>

<section class="section-lg home-alt home-construction" id="home">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="home-wrapper">
                    <br/>
                    <br/>

                    <p>${homeConfig.home.aboutus}</p>
                    <br/>
                    <a href="#services" class="scroll btn btn-yellow">Get Started</a>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="section bg-white" id="services">
    <div class="container">

        <div class="row">
            <div class="col-sm-12 text-center">
                <h2 class="title">Our Services</h2>
            </div>
        </div>

        <div class="row">
            <g:each in="${homeConfig?.home?.service?.firstLevelCategory}" var="category">

                <div class="col-sm-6">
                    <div class="features-box text-center">
                        <div class="feature-icon-const">
                            %{--<i class="flaticon-construction-tool-vehicle-with-crane-lifting-materials"></i>--}%
                            <a href="${createLink(controller: "page", action: "servicePage", params: [category: category.key])}"><img src="${category?.value}" style="width: 200px; height: 150px;" ></a>
                        </div>

                        <a href="${createLink(controller: "page", action: "servicePage", params: [category: category.key])}"><h3>${category?.key}</h3></a>
                    </div>
                </div>
            </g:each>
        </div>

    </div>
</section>


%{--<section class="section bg-white padding-b-0" id="form">--}%
    %{--<div class="container">--}%

        %{--<div class="row">--}%
            %{--<div class="col-sm-12 text-center">--}%
                %{--<h2 class="title">Featured Projects</h2>--}%

                %{--<p class="title-alt">Looks beautiful & ultra-sharp on Retina Screen Displays. Retina Icons, Fonts & all <br/> others graphics are optimized.--}%
                %{--</p>--}%
            %{--</div>--}%
        %{--</div>--}%


        %{--<div class="row">--}%
            %{--<div class="col-md-4">--}%
                %{--<div class="gal-detail thumb text-center">--}%
                    %{--<img src="images/works/construction/1.jpg" class="thumb-img" alt="work-thumbnail">--}%
                    %{--<h4><a href="#">Creative Agency</a></h4>--}%

                    %{--<p><b>Web Design</b></p>--}%
                %{--</div>--}%
            %{--</div>--}%

            %{--<div class="col-md-4">--}%
                %{--<div class="gal-detail thumb text-center">--}%
                    %{--<img src="images/works/construction/2.jpg" class="thumb-img" alt="work-thumbnail">--}%
                    %{--<h4><a href="#">Sale Cards</a></h4>--}%

                    %{--<p><b>Web Design</b></p>--}%
                %{--</div>--}%
            %{--</div>--}%

            %{--<div class="col-md-4">--}%
                %{--<div class="gal-detail thumb text-center">--}%
                    %{--<img src="images/works/construction/3.jpg" class="thumb-img" alt="work-thumbnail">--}%
                    %{--<h4><a href="#">Play Optics</a></h4>--}%

                    %{--<p><b>Web Design</b></p>--}%
                %{--</div>--}%
            %{--</div>--}%

        %{--</div>--}%


        %{--<div class="row">--}%
            %{--<div class="col-md-4">--}%
                %{--<div class="gal-detail thumb text-center">--}%
                    %{--<img src="images/works/construction/4.jpg" class="thumb-img" alt="work-thumbnail">--}%
                    %{--<h4><a href="#">Creative Agency</a></h4>--}%

                    %{--<p><b>Web Design</b></p>--}%
                %{--</div>--}%
            %{--</div>--}%

            %{--<div class="col-md-4">--}%
                %{--<div class="gal-detail thumb text-center">--}%
                    %{--<img src="images/works/construction/5.jpg" class="thumb-img" alt="work-thumbnail">--}%
                    %{--<h4><a href="#">Sale Cards</a></h4>--}%

                    %{--<p><b>Web Design</b></p>--}%
                %{--</div>--}%
            %{--</div>--}%

            %{--<div class="col-md-4">--}%
                %{--<div class="gal-detail thumb text-center">--}%
                    %{--<img src="images/works/construction/6.jpg" class="thumb-img" alt="work-thumbnail">--}%
                    %{--<h4><a href="#">Play Optics</a></h4>--}%

                    %{--<p><b>Web Design</b></p>--}%
                %{--</div>--}%
            %{--</div>--}%

        %{--</div>--}%

    %{--</div>--}%
%{--</section>--}%


%{--<section class="section bg-white" id="team">--}%
%{--<div class="container">--}%

%{--<div class="row">--}%
%{--<div class="col-sm-12 text-center">--}%
%{--<h2 class="title">Our People</h2>--}%

%{--<p class="title-alt">Looks beautiful & ultra-sharp on Retina Screen Displays. Retina Icons, Fonts & all <br/> others graphics are optimized.--}%
%{--</p>--}%
%{--</div>--}%
%{--</div>--}%


%{--<div class="row">--}%
%{--<div class="col-md-4">--}%
%{--<div class="team-box text-center">--}%
%{--<img src="images/team/team-1.jpg" class="img-responsive center-block img-circle">--}%

%{--<h4>Shawn Castleman</h4>--}%

%{--<p>Founder</p>--}%
%{--<ul class="list-inline footer-social-one team-member-social m-b-0">--}%
%{--<li><a href="#"><i class="pe-so-facebook"></i></a></li>--}%
%{--<li><a href="#"><i class="pe-so-twitter"></i></a></li>--}%
%{--<li><a href="#"><i class="pe-so-linkedin"></i></a></li>--}%
%{--</ul>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="col-md-4">--}%
%{--<div class="team-box text-center">--}%
%{--<img src="images/team/team-2.jpg" class="img-responsive center-block img-circle">--}%

%{--<h4>Martha Davis</h4>--}%

%{--<p>Web Designer</p>--}%
%{--<ul class="list-inline footer-social-one team-member-social m-b-0">--}%
%{--<li><a href="#"><i class="pe-so-facebook"></i></a></li>--}%
%{--<li><a href="#"><i class="pe-so-twitter"></i></a></li>--}%
%{--<li><a href="#"><i class="pe-so-linkedin"></i></a></li>--}%
%{--</ul>--}%
%{--</div>--}%
%{--</div>--}%

%{--<div class="col-md-4">--}%
%{--<div class="team-box text-center">--}%
%{--<img src="images/team/team-3.jpg" class="img-responsive center-block img-circle">--}%

%{--<h4>Henry Hope</h4>--}%

%{--<p>Manager</p>--}%
%{--<ul class="list-inline footer-social-one team-member-social m-b-0">--}%
%{--<li><a href="#"><i class="pe-so-facebook"></i></a></li>--}%
%{--<li><a href="#"><i class="pe-so-twitter"></i></a></li>--}%
%{--<li><a href="#"><i class="pe-so-linkedin"></i></a></li>--}%
%{--</ul>--}%
%{--</div>--}%
%{--</div>--}%
%{--</div>--}%

%{--</div>--}%
%{--</section>--}%


<section class="section" id="vendors">
    <div class="container">

        <div class="row">
            <div class="col-sm-12 text-center">
                <h2 class="title">Vendors</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <div class="features-box">
                       <p>${homeConfig.home.vendors}</p>
                    </div>
                </div>
        </div>

    </div>
</section>


<section class="section bg-white" id="contact">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class=" text-center">
                    <h2 class="title">Questions & Feedback</h2>

                    %{--<p class="title-alt">Looks beautiful &amp; ultra-sharp on Retina Screen Displays. Retina Icons, Fonts &amp; all <br> others graphics are optimized.--}%
                    %{--</p>--}%

                </div>
                <br/>
                <br/>

                <div class="row">
                    <!-- Contact form -->
                    <div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                        <g:form controller="mailSend" action="contactEmailSend">
                            <div class="form-group col-sm-12">
                                <g:textField class="form-control" id="contactName" name="name" placeholder="Your name" type="text"
                                       value=""/>

                                <div class="contactError error" id="err-contactName" style="display: none;">Please enter name</div>
                            </div>
                            <!-- /Form-name -->

                            <div class="form-group col-sm-12">
                                <g:textField class="form-control" id="contactEmail" name="email" type="text" placeholder="Your email" value=""/>

                                <div class="contactError error" id="err-contactEmailvld"
                                     style="display: none;">E-mail is not a valid format</div>
                            </div>
                            <!-- /Form-email -->

                            <div class="form-group col-xs-12">
                            <g:textArea class="form-control" id="contactMessage" name="message" rows="5" placeholder="Message"/>

                                <div class="contactError error" id="err-contactMessage" style="display: none;">Please enter message</div>
                            </div>
                            <!-- /Form Msg -->

                            <div class="row">
                                <div class="col-xs-12">
                                    <div id="contactSuccess" style="display: none;" class="text-success">E-mail was successfully sent.</div>

                                    <div class="error text-center" id="err-contactForm"
                                         style="display: none;">There was a problem validating the form please check!</div>

                                    <div class="contactError" id="err-contactTimeout" style="display: none;">The connection to the server timed out!</div>

                                    <div class="contactError" id="err-contactState"></div>
                                    <br/>
                                    <br/>

                                    <div class="text-center">
                                        <g:actionSubmit id="contactSend" value="Submit" action="contactEmailSend" class="btn btn-dark"/>
                                    </div>
                                </div> <!-- /col -->
                            </div> <!-- /row -->

                        </g:form> <!-- /form -->
                    </div> <!-- end col -->
                </div>
            </div> <!-- end Col -->
        </div>

    </div>
</section>




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