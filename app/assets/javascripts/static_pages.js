$(document).on('turbolinks:load', function() {
  // INDEX

  // WELCOME
  function resizeDiagonalLineIndex() {
    var indexWidth = $(".index").outerWidth() * 1.08;
    var indexHeight = $(".index").outerHeight();
    var w = Math.atan(indexHeight / indexWidth)
    $(".line-diagonal").css({"transform": "rotate(-" + w +"rad)", "-ms-transform": "rotate(-" + w +"rad)","  -webkit-transform": "rotate(-" + w +"rad)" })
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
  })

  // Functions called on load
  resizeDiagonalLineIndex();

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
