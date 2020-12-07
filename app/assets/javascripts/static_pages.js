$(document).on('turbolinks:load', function() {
  function resizeDiagonalLineIndex() {
    var indexWidth = $(".index").outerWidth() * 1.08;
    var indexHeight = $(".index").outerHeight();
    var w = Math.atan(indexHeight / indexWidth)
    $(".line-diagonal").css({"transform": "rotate(-" + w +"rad)", "-ms-transform": "rotate(-" + w +"rad)","  -webkit-transform": "rotate(-" + w +"rad)" })
  }

  // Functions called on resize of window
  $(window).on("resize",function(){
    resizeDiagonalLineIndex();
  })

  // Functions called on load
  resizeDiagonalLineIndex();

})
