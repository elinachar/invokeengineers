$(document).on('turbolinks:load', function() {
  // Navigation Bar Functionallity

  // Add active class to nav-items when clicked and go to link
  // $(".nav-item").click(function() {
  //   console.log("clicked", this);
  //   var activeLink = this;
  //
  //   // $(".nav-item").each(function(){
  //   //   $(this).removeClass("active");
  //   // })
  //   $(activeLink).addClass("active");
  // })

  $(".nav .nav-link").on("click", function(){
    $(".nav").find(".active").removeClass("active");
    $(this).addClass("active");
  });

  // Smooth Scrolling only to links for home page
  $(".navbar-brand.smooth, .nav-link.smooth").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    // Smooth scrolling only if user is in the homepage, else just visit proper div
    if ( window.location.pathname == "/" ) {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // If logo was clicked scroll to the top of the homepage
      // Else smooth scrolling to div with an offset of the height of the navbar
      if ( $(this).hasClass("navbar-brand")) {
        $('html, body').animate({
          scrollTop: 0
        })

      } else {
        // Using jQuery's animate() method to add smooth page scroll
        // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
        $('html, body').animate({
          scrollTop: $(hash).offset().top - $("nav").outerHeight()
        })
      }
    } else {
      var hash = this.hash;

      if ( $(this).hasClass("nav-link")) {
        location.hash = this.hash;
        // Set a timeout for loading the homepage and the scroll to the proper 
        setTimeout(function() {
          $('html, body').animate({
            scrollTop: $(window.location.hash).offset().top - $("nav").outerHeight()
          }, 300)
        }, 100);
      }
    }
  })
})
