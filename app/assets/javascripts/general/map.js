function initMap() {
  var mapCanvas = document.getElementById('googleMap');
  var myLatlng = new google.maps.LatLng(38.772482, -9.161282);
  var mapOptions = {
    center: myLatlng,
    draggable: false,
    zoom: 18,
    scrollwheel: false,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  var map = new google.maps.Map(mapCanvas, mapOptions)

  var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: 'ASCR'
  });
};

$(document).on('ready page:load', function(){
  initMap();
});


$(window).resize(function(){
  initMap();
})
