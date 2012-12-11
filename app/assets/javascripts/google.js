var map;
var canvas;

$(function(){


});


function display_map(lat, long, zoom)
{
  var mapOptions = {
    center: new google.maps.LatLng(lat, long),
    zoom: zoom,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  canvas = $('#map_canvas')[0];
  map = new google.maps.Map(canvas, mapOptions);
}

function add_marker(lat, long, title)
{
  var latlng = new google.maps.LatLng(lat, long);
  var marker = new google.maps.Marker({position: latlng, map: map, title:title, icon: '/assets/nyc_icon.png'});
} //  #map_canvas is div where map will go
// for different icon marker add comma after title, and include: icon: '/assets/icons/___.png'
// these options are available via google maps API


