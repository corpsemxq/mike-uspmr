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

        <!-- simpletextrotator.css -->
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'simpletextrotator.css')}">

        <link href="${resource(dir: 'css', file: 'icons.css')}" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="${resource(dir: 'css', file: 'style.css')}" rel="stylesheet">

        <!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

    </head>


    <body>

        <div class="bg-overlay-cd"></div>

        <section class="section-lg home-alt">
            <div class="container">

                <div class="row">
                    <div class="col-sm-12 text-center">
                        <img src="images/logo_white.png" alt="" class="logo">
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div id="count-down" class="row center-block">
                            <div class="clock-presenter days_dash col-sm-3">
                                <div class="digit"></div>
                                <div class="digit"></div>
                                <div class="digit"></div>
                                <p class='note dash_title'>Days</p>
                            </div>
                            <div class="clock-presenter hours_dash col-sm-3">
                                <div class="digit"></div>
                                <div class="digit"></div>
                                <p class='note dash_title'>Hours</p>
                            </div>
                            <div class="clock-presenter minutes_dash col-sm-3">
                                <div class="digit"></div>
                                <div class="digit"></div>
                                <p class='note dash_title'>Minutes</p>
                            </div>
                            <div class="clock-presenter seconds_dash col-sm-3">
                                <div class="digit"></div>
                                <div class="digit"></div>
                                <p class='note dash_title'>Seconds</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-12">
                        <div class="text-center subscribe-form subscribe-cs">
                            <h4>You can subscribe to our newsletter in order to get notified when <br/> we launch. Stay tuned!</h4>
                            <form action="#">
                                <input type="email" placeholder="Email" required="required">
                                <button type="submit">Notify me !</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </section>

    <script src="${resource(dir: 'js', file: 'jquery-2.1.4.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.easing.1.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.backstretch.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.lwtCountdown-1.0.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.app.js')}"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                "use strict";
                //Set your date
                $('#count-down').countDown({
                    targetDate: {
                        'day': 17,
                        'month': 1,
                        'year': 2017,
                        'hour': 0,
                        'min': 0,
                        'sec': 0
                    },
                    omitWeeks: true
                });

            });

            $.backstretch(["images/bg-3.jpg","images/bg-2.jpg","images/bg-1.jpg"], {
                duration: 3000,
                fade: 750
            });

        </script>

    </body>
</html>