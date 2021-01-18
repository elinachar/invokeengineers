$(document).on('turbolinks:load', function() {

  // Project Show

  // Carousel
  $('.main-carousel').flickity({
    // options
    // cellAlign: 'left',
    // contain: true,
    imagesLoaded: true, // for proper loading images when linking to other projects whithout having to reload or resize window
    // freeScroll: true, //Enables content to be freely scrolled and flicked without aligning cells to an end position.
    // freeScrollFriction: 0.03 // lower friction, slides easier  Default freeScrollFriction: 0.075.
    wrapAround: true, //for endless loop
    // prevNextButtons: false, // disable previous & next buttons
    // pageDots: false // disable dots
    // fullscreen: true
    // lazyLoad: 3,
    autoPlay: 5000, //milliseconds
  });
});
