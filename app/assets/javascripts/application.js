// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require faye
//= require messages
//= require turbolinks
//= require_tree .

//extends animate.css to be called as js functions
$.fn.extend({
  animateCss: function (animationName) {
    var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
      this.addClass('animated ' + animationName).one(animationEnd, function() {
        $(this).removeClass('animated ' + animationName);
      });
  }
});


$(document).on('turbolinks:load', function(){

//repeated cached in variables for performance
  var $formButtons = $(".form-icons");
  var $formPartials = $(".form-partials");
  var $videoFormButton = $("#video-form-button");
  var $imageFormButton = $("#image-form-button");
  var $songFormButton = $("#song-form-button");
  var $quoteFormButton = $("#quote-form-button");
  var $splashSwipeRightIcon = $('.splash-swipe-right-icon');
  var $splashPageBounce = $('.splash-page-bounce');

  //handles showing and hiding forms
  var formSelect = function(form) {
    $formPartials.hide();
    $(form).fadeIn(150);
    $formButtons.removeClass("click-red click-yellow click-green click-orange");
    if (form=="#video-form") {
      $videoFormButton.addClass("click-red");
    }
    if (form=="#image-form") {
      $imageFormButton.addClass("click-yellow");
    }
    if (form=="#song-form") {
      $songFormButton.addClass("click-green");
    }
    if (form=="#quote-form") {
      $quoteFormButton .addClass("click-orange");
    }
  };


  //event listeners for swapping out forms
  $(document).on("click touchstart", "#video-form-button", function() {
    formSelect("#video-form");
  });

  $(document).on("click touchstart", "#image-form-button", function() {
    formSelect("#image-form");
  });

  $(document).on("click touchstart", "#song-form-button", function() {
    formSelect("#song-form");
  });

  $(document).on("click touchstart", "#quote-form-button", function() {
    formSelect("#quote-form");
  });

  //a recursive function that continually runs the bounce animations when on the splash page
  if (($('.new-user-text').length)==1) {
    var timeout = 7000;
    var action = function() {
        $splashSwipeRightIcon.animateCss('bounceInLeft');
        $splashPageBounce.animateCss('bounce');
        setTimeout(action, timeout);
    };
    action();
  }

  //if the user is on index carousel, creates a brief animation to show swipe direction
  if (($('.new-user-text').length)!=1) {
    setTimeout(function() {
      $('.swipe-right-icon').fadeIn();
    }, 1000);
    setTimeout(function() {
      $('.swipe-right-icon').fadeOut();
    }, 6000);
  }

  //hides alert messages after timeout
  setTimeout(function() {
    $('.alert').slideUp();
  }, 5000);

  //initializes owl carousel
  var $owl = $('.owl-carousel');

  //sets the owl carousel options
  $owl.owlCarousel({
    items:1,
    margin:5,
    video:true,
    nav: false,
    dots:false
  });

  //sets the form content type by stashing it in a data tag set by ruby

  var formContentType = $(".form-container").data("type");
  formSelect("#" + formContentType + "-form");

  //when a user clicks on a delete button, scrolls page down to see the modal
  $(".delete-button-collapse").on("click", function () {
    $('html, body').animate({scrollTop: '+=150px'}, 800);
  });

  //enables the use of keyboard buttons as a shortcut to the owl carousel
  $(document.documentElement).keyup(function(event) {
    if (event.keyCode==37) {
      $owl.trigger('prev.owl.carousel', [300]);
    }
    else if (event.keyCode==39) {
      $owl.trigger('next.owl.carousel');
    }
  });

  //dynamically scales text size using fitText for quotes
  $(".quote-title").fitText(2.0);

  //a poorly executed toggle switch for handling cog action on all iOS and Android devices
  toggle_click = 0;
  $('#cog').on("touchstart", function(e) {
    if (toggle_click ===0) {
      $(".dropdown-content").show();
      e.stopPropagation();
      toggle_click++;
    }
    else {
      $(".dropdown-content").hide();
      toggle_click--;
    }
  });

  toggle_touch = 0;
  $('#cog').on("click", function(e) {
    if (toggle_touch ===0) {
      $(".dropdown-content").show();
      e.stopPropagation();
      toggle_touch++;
    }
    else {
      $(".dropdown-content").hide();
      toggle_touch--;
    }
  });

});
