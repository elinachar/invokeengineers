$(document).on('turbolinks:load', function() {
  // INDEX

  // CAROUSEL
  // $('.index-carousel').flickity({
    // options
    // cellAlign: 'left',
    // contain: true,
    // rightToLeft: true,
    // imagesLoaded: true, // for proper loading images when linking to other projects whithout having to reload or resize window
    // freeScroll: true, //Enables content to be freely scrolled and flicked without aligning cells to an end position.
    // freeScrollFriction: 0.03 // lower friction, slides easier  Default freeScrollFriction: 0.075.
    // wrapAround: true, //for endless loop
    // prevNextButtons: false, // disable previous & next buttons
    // pageDots: false // disable dots
    // fullscreen: true,
    // lazyLoad: 3,

    // autoPlay: true, //milliseconds
  // });

var $carousel = $('.index-carousel').flickity({
  imagesLoaded: true, // for proper loading images when linking to other projects whithout having to reload or resize window
  autoPlay: 5000, //milliseconds
  wrapAround: true, //for endless loop
  prevNextButtons: false, // disable previous & next buttons
  pauseAutoPlayOnHover: false, //do not stop carousel when mouse hovers it
  freeScrollFriction: 0.09,
  rightToLeft: true,
});
var $caption = $('.carousel-caption');
// Flickity instance
var flkty = $carousel.data('flickity');

$carousel.on( 'select.flickity', function() {
  // set the caption from the data-caption of the carousel image
  $('.carousel-caption').addClass("is-selected");
  $caption.text( $(flkty.selectedElement).data("caption") );
  setTimeout(
    function()
    {
      $(".carousel-caption").removeClass("is-selected");
    }, 3500
  )
});





  // WELCOME
  function resizeDiagonalLineIndex() {
    if (window.location.pathname == "/") { // change when hide under_construction
    // if (window.location.pathname == "/under-construction") {
      var indexWidth = $(".under-construction").outerWidth() * 1.08;
      var indexHeight = $(".under-construction").outerHeight();
      var w = Math.atan(indexHeight / indexWidth)
    } else {
      var indexWidth = $(".welcome").outerWidth() * 1.08;
      var indexHeight = $(".welcome").outerHeight();
      var w = Math.atan(indexHeight / indexWidth)
    }
    $(".line-diagonal").css({"transform": "rotate(-" + w +"rad)", "-ms-transform": "rotate(-" + w +"rad)","  -webkit-transform": "rotate(-" + w +"rad)" })
  }

  function shiftWelcomeMessageCard() {
    var welcomeMessageHeight = $(".welcome-card").outerHeight();
    var windowHeight = $(window).height();
    var navBarHeight = $("nav").outerHeight();
    var pT = parseInt($(".welcome").css("padding-top"));
    var pB = parseInt($(".welcome").css("padding-bottom"));
    marginTop = (windowHeight - navBarHeight - pT - pB -  welcomeMessageHeight) / 2;
    if (marginTop > 0 ) {
      $(".welcome-card").css("margin-top", marginTop + "px");
    }
  }

  // CONTACT
  $( ".form-wrapper" ).mouseenter(function() {
    $(this).addClass("animated");
  })

  // After Google maps have been loaded
  // Add alt tags to all of it images for SEO needs.
  // altImgMap();
  function altImgMap() {
    if (typeof google === 'object' && typeof google.maps === 'object') {
      // Get all the images in the google map
      var googleMapImages = $("#map img");
      // Check which images do not have alt attribute and add an empty one
      googleMapImages.each(function( index, value ) {
        if (typeof $(value).attr("alt")== typeof undefined || $(value).attr("alt") == false) {
          $(value).attr("alt" , "Google Maps");
        }
      })
    }
  };

  // Functions called on resize of window
  $(window).on("resize",function(){
    resizeDiagonalLineIndex();
    shiftWelcomeMessageCard();
  })

  // Functions called on load
  resizeDiagonalLineIndex();
  shiftWelcomeMessageCard();

})

// API Google Map
function initMap() {
  // The location of position
  var pos = {lat: 35.326293, lng: 25.123714};
  // The map, centered at position
  var map = new google.maps.Map($('#map'), {
    zoom: 13,
    center: pos
  });
  // The marker, positioned at position
  var marker = new google.maps.Marker({position: pos, map: map});
};
