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

<g:applyLayout name="header"/>

<section class="section-lg home-alt home-construction" id="home">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="home-wrapper">
                    <h2 class="text-muted">Creative Landing Page Template</h2>
                    <p>${homeConfig.home.aboutus}</p>
                    <a href="#" class="btn btn-yellow">Get Started</a>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="section" id="services">
    <div class="container">
        <div class="row">
            <g:each in="${services}" var="service">

                <div class="col-sm-4">
                    <div class="features-box text-center">
                        <div class="feature-icon-const">
                            %{--<i class="flaticon-construction-tool-vehicle-with-crane-lifting-materials"></i>--}%
                            <img src="images/homeBack.jpg" style="width: 200px; height: 150px;" >
                        </div>

                        <h3>${service.key}</h3>

                        <p class="text-muted">service.value</p>
                    </div>
                </div>
            </g:each>

        %{--<div class="col-sm-4">--}%
        %{--<div class="features-box text-center">--}%
        %{--<div class="feature-icon-const">--}%
        %{--<i class="flaticon-constructor-with-hat-and-a-gear"></i>--}%
        %{--</div>--}%

        %{--<h3>Dedicated Support</h3>--}%

        %{--<p class="text-muted">We put a lot of effort in design, as it’s the most important ingredient of successful website.Sed ut perspiciatis unde omnis iste natus error sit.</p>--}%
        %{--</div>--}%
        %{--</div>--}%

        %{--<div class="col-sm-4">--}%
        %{--<div class="features-box text-center">--}%
        %{--<div class="feature-icon-const">--}%
        %{--<i class="flaticon-bricks-wall-and-demolition-ball"></i>--}%
        %{--</div>--}%

        %{--<h3>Digital Design</h3>--}%

        %{--<p class="text-muted">We put a lot of effort in design, as it’s the most important ingredient of successful website.Sed ut perspiciatis unde omnis iste natus error sit.</p>--}%
        %{--</div>--}%
        %{--</div>--}%
        %{--</div>--}%


        %{--<div class="row home-const-services">--}%
        %{--<div class="col-sm-4">--}%
        %{--<div class="features-box text-center">--}%
        %{--<div class="feature-icon-const">--}%
        %{--<i class="flaticon-construction-vehicle-for-concrete-transportation"></i>--}%
        %{--</div>--}%

        %{--<h3>Crane Solutions</h3>--}%

        %{--<p class="text-muted">We put a lot of effort in design, as it’s the most important ingredient of successful website.Sed ut perspiciatis unde omnis iste natus error sit.</p>--}%
        %{--</div>--}%
        %{--</div>--}%

        %{--<div class="col-sm-4">--}%
        %{--<div class="features-box text-center">--}%
        %{--<div class="feature-icon-const">--}%
        %{--<i class="flaticon-drill-tool-to-make-holes"></i>--}%
        %{--</div>--}%

        %{--<h3>Dedicated Support</h3>--}%

        %{--<p class="text-muted">We put a lot of effort in design, as it’s the most important ingredient of successful website.Sed ut perspiciatis unde omnis iste natus error sit.</p>--}%
        %{--</div>--}%
        %{--</div>--}%

        %{--<div class="col-sm-4">--}%
        %{--<div class="features-box text-center">--}%
        %{--<div class="feature-icon-const">--}%
        %{--<i class="flaticon-worker-of-construction-working-with-a-shovel-beside-material-pile"></i>--}%
        %{--</div>--}%

        %{--<h3>Digital Design</h3>--}%

        %{--<p class="text-muted">We put a lot of effort in design, as it’s the most important ingredient of successful website.Sed ut perspiciatis unde omnis iste natus error sit.</p>--}%
        %{--</div>--}%
        %{--</div>--}%
        </div>

    </div>
</section>


<section class="section bg-white padding-b-0" id="form">
    <div class="container">

        <div class="row">
            <div class="col-sm-12 text-center">
                <h2 class="title">Featured Projects</h2>

                <p class="title-alt">Looks beautiful & ultra-sharp on Retina Screen Displays. Retina Icons, Fonts & all <br/> others graphics are optimized.
                </p>
            </div>
        </div>


        <div class="row">
            <div class="col-md-4">
                <div class="gal-detail thumb text-center">
                    <img src="images/works/construction/1.jpg" class="thumb-img" alt="work-thumbnail">
                    <h4><a href="#">Creative Agency</a></h4>

                    <p><b>Web Design</b></p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="gal-detail thumb text-center">
                    <img src="images/works/construction/2.jpg" class="thumb-img" alt="work-thumbnail">
                    <h4><a href="#">Sale Cards</a></h4>

                    <p><b>Web Design</b></p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="gal-detail thumb text-center">
                    <img src="images/works/construction/3.jpg" class="thumb-img" alt="work-thumbnail">
                    <h4><a href="#">Play Optics</a></h4>

                    <p><b>Web Design</b></p>
                </div>
            </div>

        </div>


        <div class="row">
            <div class="col-md-4">
                <div class="gal-detail thumb text-center">
                    <img src="images/works/construction/4.jpg" class="thumb-img" alt="work-thumbnail">
                    <h4><a href="#">Creative Agency</a></h4>

                    <p><b>Web Design</b></p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="gal-detail thumb text-center">
                    <img src="images/works/construction/5.jpg" class="thumb-img" alt="work-thumbnail">
                    <h4><a href="#">Sale Cards</a></h4>

                    <p><b>Web Design</b></p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="gal-detail thumb text-center">
                    <img src="images/works/construction/6.jpg" class="thumb-img" alt="work-thumbnail">
                    <h4><a href="#">Play Optics</a></h4>

                    <p><b>Web Design</b></p>
                </div>
            </div>

        </div>

    </div>
</section>


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


<section class="section bg-white" id="contact">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class=" text-center">
                    <h2 class="title">Get In Touch</h2>

                    <p class="title-alt">Looks beautiful &amp; ultra-sharp on Retina Screen Displays. Retina Icons, Fonts &amp; all <br> others graphics are optimized.
                    </p>
                </div>


                <div class="row">
                    <!-- Contact form -->
                    <div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                        <g:form controller="mailSend" action="contactEmailSend">
                            <div class="form-group col-sm-12">
                                <g:textField class="form-control" id="name2" name="name" placeholder="Your name" type="text"
                                       value=""/>

                                <div class="error" id="err-name" style="display: none;">Please enter name</div>
                            </div>
                            <!-- /Form-name -->

                            <div class="form-group col-sm-12">
                                <g:textField class="form-control" id="email2" name="email" type="text" placeholder="Your email" value=""/>

                                <div class="error" id="err-emailvld"
                                     style="display: none;">E-mail is not a valid format</div>
                            </div>
                            <!-- /Form-email -->

                            <div class="form-group col-xs-12">
                            <g:textArea class="form-control" id="message2" name="message" rows="5" placeholder="Message"/>

                                <div class="error" id="err-message" style="display: none;">Please enter message</div>
                            </div>
                            <!-- /Form Msg -->

                            <div class="row">
                                <div class="col-xs-12">
                                    <div id="ajaxsuccess" class="text-success">E-mail was successfully sent.</div>

                                    <div class="error text-center" id="err-form"
                                         style="display: none;">There was a problem validating the form please check!</div>

                                    <div class="error" id="err-timedout">The connection to the server timed out!</div>

                                    <div class="error" id="err-state"></div>

                                    <div class="text-center">
                                        <g:actionSubmit value="Submit" action="contactEmailSend" class="btn btn-dark"/>
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