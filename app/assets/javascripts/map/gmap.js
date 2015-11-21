$(window).load(function() {  
  loadScript();
});

var map;

function initialize() {
        
  var mapOptions = {
          center: { lat: 49.250000, lng: -123.000000 },
          zoom: 10,          
          mapTypeId: google.maps.MapTypeId.NORMAL,
          panControl: true,
          scaleControl: true,
          streetViewControl: true,
          overviewMapControl: true
        };
        // initializing map with mapOptions
        map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);
        
        var infoWindow = new google.maps.InfoWindow({map: map});

        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent('Location found.');
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
      }
}

function loadScript() {
  console.log("map loading ...");
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
    '&libraries=drawing'+
    '&callback=initialize';
  document.body.appendChild(script); 
}
