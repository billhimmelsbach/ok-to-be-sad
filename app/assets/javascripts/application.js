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
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function(){
  $('.owl-carousel').owlCarousel({
    items:1,
    margin:10,
    video:true,
    stagePadding: 50,
    nav: true,
    // autoHeight:true
  });
  $(".cog").click(function() {
      console.log("test");
      $(".dropdown-content").show();
      // $(".dropdown-content a").show();
  });

  $(".ProfilePhoto").click(function() {
      console.log("test");
      $(".dropdown-content").hide();
  });
});
