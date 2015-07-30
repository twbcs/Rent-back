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
//= require jquery.equalHeight
//= require jquery.tablesorter
//= require jquery.paginate
//= require ckeditor/init
//= require wowslider
//= require hideshow
//= require system
// require turbolinks
// require_tree .

$(function() {
  $('.column').equalHeight();
});

jQuery("#wowslider-container1").wowSlider({
  effect: "shift",
  prev: "",
  next: "",
  duration: 8 * 100,
  delay: 20 * 100,
  width: 533,
  height: 360,
  autoPlay: true,
  autoPlayVideo: false,
  playPause: true,
  stopOnHover: false,
  loop: false,
  bullets: 1,
  caption: true,
  captionEffect: "parallax",
  controls: true,
  controlsThumb: false,
  responsive: 1,
  fullScreen: false,
  gestures: 2,
  onBeforeStep: 0,
  images: 0
});
