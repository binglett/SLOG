$(window).load(function() {  
  loadScript();
});

var QueryString = function () {
  // This function is anonymous, is executed immediately and 
  // the return value is assigned to QueryString!
  var query_string = {};
  var query = window.location.search.substring(1);
  var vars = query.split("&");
  for (var i=0;i<vars.length;i++) {
    var pair = vars[i].split("=");
        // If first entry with this name
    if (typeof query_string[pair[0]] === "undefined") {
      query_string[pair[0]] = decodeURIComponent(pair[1]);
        // If second entry with this name
    } else if (typeof query_string[pair[0]] === "string") {
      var arr = [ query_string[pair[0]],decodeURIComponent(pair[1]) ];
      query_string[pair[0]] = arr;
        // If third or later entry with this name
    } else {
      query_string[pair[0]].push(decodeURIComponent(pair[1]));
    }
  } 
    return query_string;
}();

var map;

function initialize() {
  var glat = parseFloat(QueryString.lat);
  var glng = parseFloat(QueryString.lng);
        
  var mapOptions = {
          center: { lat: glat, lng: glng },
          zoom: 15,          
          mapTypeId: google.maps.MapTypeId.TERRAIN,
          panControl: true,
          scaleControl: true,
          streetViewControl: true,
          overviewMapControl: true
        };
	// initializing map with mapOptions
    map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);
        
    var marker = new google.maps.Marker({
		position: { lat: glat, lng: glng },
		map: map
	});
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
