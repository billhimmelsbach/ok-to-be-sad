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
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function(){

  var formSelect = function(form) {
    $(".form-partials").hide();
    $(form).fadeIn();
    console.log("Hit!");
  };

  setTimeout(function() {
    $('.swipe-right-icon').fadeIn();
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

  var formContentType = $(".form-container").data("type");
  console.log(formContentType);
  formSelect("#" + formContentType + "-form");

  $(".quote-title").fitText(2.0);

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


  $('.cog').on("click touchstart", function(e) { //button click class name is myDiv
    $(".dropdown-content").show();
   e.stopPropagation();
 });
//
  $(function(){
  $(document).on("click touchstart", function(){
  $('.dropdown-content').hide(); //hide the button
//
  });
});
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

  $(".ProfilePhoto").click(function() {
      console.log("test");
      $(".dropdown-content").hide();
  });
});
