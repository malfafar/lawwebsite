var ready;
ready = function() {


  $("#owl-demo").owlCarousel({

      navigation : false, // Show next and prev buttons
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem :true,
      autoPlay : 5000,

  });

};

$(document).ready(ready);
$(document).on('page:load', ready);
