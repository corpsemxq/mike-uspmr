/* Theme Name: Metrico - Responsive Landing page template
   Author: Coderthemes
   Author e-mail: coderthemes@gmail.com
   Version: 1.0.0
   Created:March 2016
   File Description:Main JS file of the template
*/

//jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('.scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top - 0
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});


/*global jQuery */
jQuery(function ($) {
    'use strict';

    /**
     * Contact Form Application
     */
    var ContactFormApp = {
        $contactForm: $("#contactForm"),
        $contactFormBtn: $("#contactSend"),
        $contactFormName: $("#contactName"),
        $contactFormEmail: $("#contactEmail"),
        $contactFormMessage: $("#contactMessage"),
        $confirmMessage: $("#contactSuccess"),
        $errorContactMessages: $(".contactError"),
        $errorContactName: $("#err-contactName"),
        $errorContactEmail: $("#err-contactEmailvld"),
        $errorContactMessage: $("#err-contactMessage"),
        $errorContactForm: $("#err-contactForm"),
        $errorContactTimeout: $("#err-contactTimeout"),
        $errorContactState: $("#err-contactState"),

        //Validate Contact Us Data
        validate: function () {
            var error = false; // we will set this true if the form isn't valid

            var name = this.$contactFormName.val(); // get the value of the input field
            if(name == "" || name == " " || name == "Name") {
                this.$errorContactName.show(500);
                this.$errorContactName.delay(4000);
                this.$errorContactName.animate({
                    height: 'toggle'  
                }, 500, function() {
                    // Animation complete.
                }); 
                error = true; // change the error state to true
            }

            var email_compare = /^([a-z0-9_.-]+)@([da-z.-]+).([a-z.]{2,6})$/; // Syntax to compare against input
            var email = this.$contactFormEmail.val().toLowerCase(); // get the value of the input field

            if (email == "" || email == " " || email == "E-mail") { // check if the field is empty
                this.$errorContactEmail.show(500);
                this.$errorContactEmail.delay(4000);
                this.$errorContactEmail.animate({
                    height: 'toggle'  
                }, 500, function() {
                    // Animation complete.
                });         
                error = true;
            }
            else if (!email_compare.test(email)) { // if it's not empty check the format against our email_compare variable
                this.$errorContactEmail.show(500);
                this.$errorContactEmail.delay(4000);
                this.$errorContactEmail.animate({
                    height: 'toggle'  
                }, 500, function() {
                    // Animation complete.
                });         
                error = true;
            }

            var message = this.$contactFormMessage.val(); // get the value of the input field
            
            if(message == "" || message == " " || message == "Message") {              
                this.$errorContactMessage.show(500);
                this.$errorContactMessage.delay(4000);
                this.$errorContactMessage.animate({
                    height: 'toggle'  
                }, 500, function() {
                    // Animation complete.
                });            
                error = true; // change the error state to true
            }

            if(error == true) {
                this.$errorContactForm.show(500);
                this.$errorContactForm.delay(4000);
                this.$errorContactForm.animate({
                    height: 'toggle'  
                }, 500, function() {
                    // Animation complete.
                }); 
            }

            return error;
        },
        //contact form submit handler
        contactFormSubmit: function (obj) {
            this.$errorContactMessages.fadeOut('slow'); // reset the error messages (hides them)

            if(this.validate() == false) {


                var $this = this;
                return true;
            }
            return false;
        },
        bindEvents: function () {
            //binding submit event
            this.$contactFormBtn.on('click', this.contactFormSubmit.bind(this));
        },
        init: function () {
            //initializing the contact form
            console.log('Contact form is initialized');
            this.bindEvents();
            return this;
        }
    };



    /**
     * Contact Form Application
     */
    var ApplicationFormApp = {
        $applicationForm: $("#applicationForm"),
        $applicationFormBtn: $("#applicationSend"),
        $applicationName: $("#applicationName"),
        $applicationBusinessName: $("#applicationBusinessName"),
        $applicationCellNumber: $("#applicationCellNumber"),
        $applicationEmail: $("#applicationEmail"),
        $applicationReferName: $("#applicationReferName"),
        $applicationReferCompanyName: $("#applicationReferCompanyName"),
        $errorApplicationName: $("#err-applicationName"),
        $errorApplicationBusinessName: $("#err-applicationBusinessName"),
        $errorApplicationEmail: $("#err-applicationEmail"),
        $errorApplicationReferName: $("#err-applicationReferName"),
        $errorApplicationReferCompanyName: $("#err-applicationReferCompanyName"),
        $errorApplicationMessage: $("#err-applicationMessage"),
        $errorApplicationForm: $("#err-applicationForm"),
        $errorApplicationTimeout: $("#err-applicationTimeout"),
        $errorApplicationState: $("#err-applicationState"),


        //Validate Contact Us Data
        validate: function () {
            var error = false; // we will set this true if the form isn't valid

            var name = this.$applicationName.val(); // get the value of the input field
            if(name == "" || name == " " || name == "Name") {
                this.$errorApplicationName.show(500);
                this.$errorApplicationName.delay(40000);
                this.$errorApplicationName.animate({
                    height: 'toggle'
                }, 500, function() {
                    // Animation complete.
                });
                error = true; // change the error state to true
            }

            var businessName = this.$applicationBusinessName.val(); // get the value of the input field
            if(businessName == "" || businessName == " " || businessName == "Name") {
                this.$errorApplicationBusinessName.show(500);
                this.$errorApplicationBusinessName.delay(40000);
                this.$errorApplicationBusinessName.animate({
                    height: 'toggle'
                }, 500, function() {
                    // Animation complete.
                });
                error = true; // change the error state to true
            }

            //var cellNumber = this.$applicationCellNumber.val(); // get the value of the input field
            //if(cellNumber == "" || cellNumber == " " || cellNumber == "Name") {
            //    this.$errorApplicationCellNumber.show(500);
            //    this.$errorApplicationCellNumber.delay(40000);
            //    this.$errorApplicationCellNumber.animate({
            //        height: 'toggle'
            //    }, 500, function() {
            //        // Animation complete.
            //    });
            //    error = true; // change the error state to true
            //}

            var referName1 = this.$applicationReferName.val(); // get the value of the input field
            if(referName1 == "" || referName1 == " " || referName1 == "Name") {
                this.$errorApplicationReferName.show(500);
                this.$errorApplicationReferName.delay(40000);
                this.$errorApplicationReferName.animate({
                    height: 'toggle'
                }, 500, function() {
                    // Animation complete.
                });
                error = true; // change the error state to true
            }

            var referCompanyName1 = this.$applicationReferCompanyName.val(); // get the value of the input field
            if(referCompanyName1 == "" || referCompanyName1 == " " || referCompanyName1 == "Name") {
                this.$errorApplicationReferCompanyName.show(500);
                this.$errorApplicationReferCompanyName.delay(40000);
                this.$errorApplicationReferCompanyName.animate({
                    height: 'toggle'
                }, 500, function() {
                    // Animation complete.
                });
                error = true; // change the error state to true
            }

            var email_compare = /^([a-z0-9_.-]+)@([da-z.-]+).([a-z.]{2,6})$/; // Syntax to compare against input
            var email = this.$applicationEmail.val().toLowerCase(); // get the value of the input field

            if (email == "" || email == " " || email == "E-mail") { // check if the field is empty
                this.$errorApplicationEmail.show(500);
                this.$errorApplicationEmail.delay(40000);
                this.$errorApplicationEmail.animate({
                    height: 'toggle'
                }, 500, function() {
                    // Animation complete.
                });
                error = true;
            }
            else if (!email_compare.test(email)) { // if it's not empty check the format against our email_compare variable
                this.$errorApplicationEmail.show(500);
                this.$errorApplicationEmail.delay(40000);
                this.$errorApplicationEmail.animate({
                    height: 'toggle'
                }, 500, function() {
                    // Animation complete.
                });
                error = true;
            }

            if(error == true) {
                this.$errorApplicationForm.show(500);
                this.$errorApplicationForm.delay(40000);
                this.$errorApplicationForm.animate({
                    height: 'toggle'
                }, 500, function() {
                    // Animation complete.
                });
            }

            return error;
        },
        //contact form submit handler
        applicationFormSubmit: function (obj) {
            this.$errorApplicationMessage.fadeOut('slow'); // reset the error messages (hides them)

            if(this.validate() == false) {

                var data_string = $('#applicationForm').serialize(); // Collect data from form

                var $this = this;
                return true;
            }
            return false;
        },
        bindEvents: function () {
            //binding submit event
            this.$applicationFormBtn.on('click', this.applicationFormSubmit.bind(this));
        },
        init: function () {
            //initializing the contact form
            console.log('Application form is initialized');
            this.bindEvents();
            return this;
        }
    };


    //Initializing the app
    ContactFormApp.init({});
    ApplicationFormApp.init({});

});