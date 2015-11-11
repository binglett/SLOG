$(window).load(function() {
  loadScript();
});

var map;

function initialize() {
        
  var mapOptions = {
          center: new google.maps.LatLng(49.250000, -123.000000),
          zoom: 10,
          mapTypeId: google.maps.MapTypeId.NORMAL,
          panControl: true,
          scaleControl: true,
          streetViewControl: true,
          overviewMapControl: true
        };
        // initializing map
        map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);
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
google.maps.event.addDomListener(window, 'page:load', initialize);