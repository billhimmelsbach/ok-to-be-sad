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


$(document).on('turbolinks:load', function(){

  var $formButtons = $(".form-icons");
  var $formPartials = $(".form-partials");

  var formSelect = function(form) {
    $formPartials.hide();
    $(form).fadeIn();
    $formButtons.removeClass("click-red click-yellow click-green click-orange");
    if (form == "#video-form") {
      $("#video-form-button").addClass("click-red");
    }
    if (form == "#image-form") {
      $("#image-form-button").addClass("click-yellow");
    }
    if (form == "#song-form") {
      $("#song-form-button").addClass("click-green");
    }
    if (form == "#quote-form") {
      $("#quote-form-button").addClass("click-orange");
    }
  };

  // var flashicons = function() {
  //
  // };

  // setTimeout(function() {
  //   $("#video-form-button").addClass("click-red");
  // }, 300);
  // setTimeout(function() {
  //   $("#image-form-button").addClass("click-yellow");
  // }, 350);
  // setTimeout(function() {
  //   $("#song-form-button").addClass("click-green");
  // }, 400);
  // setTimeout(function() {
  //   $("#video-form-button").removeClass("click-red");
  // }, 400);
  // setTimeout(function() {
  //   $("#quote-form-button").addClass("click-orange");
  // }, 550);
  // setTimeout(function() {
  //   $("#image-form-button").removeClass("click-yellow");
  // }, 450);
  // setTimeout(function() {
  //   $("#song-form-button").removeClass("click-green");
  // }, 300);
  // setTimeout(function() {
  //   $("#quote-form-button").removeClass("click-orange");
  // }, 350);

  setTimeout(function() {
    if (($('.newusertext').length)!=1) {
      console.log($('.newusertext').length);
      $('.swipe-right-icon').fadeIn();
    }
  }, 1500);

  // $('.swipe-right-icon').show();

  setTimeout(function() {
    $('.swipe-right-icon').fadeOut();
  }, 5000);

  setTimeout(function() {
    $('.alert').slideUp();
  }, 3000);

  $('.owl-carousel').owlCarousel({
    items:1,
    margin:5,
    video:true,
    nav: false,
    autoHeight:true
  });

  $(".delete-button-collapse").on("click", function () {
    $('html, body').animate({scrollTop: '+=150px'}, 800);
  });

  var formContentType = $(".form-container").data("type");
  console.log(formContentType);
  formSelect("#" + formContentType + "-form");

  $(".quote-title").fitText(2.0);
  // $(".clip-text").fitText(0.24);
  // $(document).on('click touchstart', function(e) {
  //     if (e.target.id == ('cog' || 'dropdown-content')) {
  //       $(".dropdown-content").show();
  //     } else {
  //       $(".dropdown-content").hide();
  //     }
  // });

  // $(document).not(".dropdownprofile").click(function() {
  //   $(".dropdown-content").hide();
  // });

  toggle_click = 0;
  $('#cog').on("touchstart", function(e) {
    if (toggle === 0) {
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
    if (toggle_touch === 0) {
      $(".dropdown-content").show();
      e.stopPropagation();
      toggle_touch++;
    }
    else {
      $(".dropdown-content").hide();
      toggle_touch--;
    }
  });


  // $('.cog').on("click touchstart", function(e) {
  //   $(".dropdown-content").show();
  //   e.stopPropagation();
  // });
  //
  // $(function(){
  //   $(document).on("click touchstart", function(){
  //     $('.dropdown-content').hide(); //hide the button
  // });
  // $(".cog").click(function() {
  //     console.log("test");
  //     $(".dropdown-content").show();
  // });

  // $(document).on("click", "#video-form-button", function() {
  //   formSelect("#video-form");
  // });
  //
  // $(document).on("click", "#image-form-button", function() {
  //   formSelect("#image-form");
  // });
  //
  // $(document).on("click", "#song-form-button", function() {
  //   formSelect("#song-form");
  // });
  //
  // $(document).on("click", "#quote-form-button", function() {
  //   formSelect("#quote-form");
  // });

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
  // $(document).on("click", "#video-form-button", function() {
  //   $(".form-partials").hide();
  //   console.log("VIDEO!");
  //   $("#video-form").fadeIn();
  // });

  //
  // $(document).on("click", "#image-form-button", function() {
  //   $(".form-partials").hide();
  //   console.log("IMAGE!");
  //   $("#image-form").fadeIn();
  // });
  //
  // $(document).on("click", "#song-form-button", function() {
  //   $(".form-partials").hide();
  //   console.log("SONG!");
  //   $("#song-form").fadeIn();
  // });
  //
  // $(document).on("click", "#quote-form-button", function() {
  //   $(".form-partials").hide();
  //   console.log("QUOTE!");
  //   $("#quote-form").fadeIn();
  // });

  // $(".ProfilePhoto").click(function() {
  //     console.log("test");
  //     $(".dropdown-content").hide();
  // });
});
