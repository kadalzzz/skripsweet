var nearCoords = [];
var nearPlaces = [];

function getNearbyPlaces() {
  var google_place_url = "https://maps.googleapis.com/maps/api/place/search/json?location=";
  var rad = 50000 ;
  var sensor = "true";
  var pyrmont = new google.maps.LatLng(longitude, latitude);
  map = new google.maps.Map(document.getElementById('map'), {
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    center: pyrmont,
    zoom: 15
  });

  var request = {
    location: pyrmont,
    radius: rad,
    sensor: false,
    types: ["airport"]
  };
  infowindow = new google.maps.InfoWindow();
  var service = new google.maps.places.PlacesService(map);
  service.search(request, callback);
}

function change_weather(sel_val){
  coord = nearCoords[sel_val]
  $.ajax({
    url: "/api/get_weather_from_location?lat=" + nearCoords[sel_val].lat() + "&place=" + nearPlaces[sel_val] + "&lng=" + nearCoords[sel_val].lng(),
    success: function(data){
      var data_split = data_split = data.split("*");
      document.getElementById("weather_widget").innerHTML = "";
	    $("#weather_widget").append("<div id='weather_img'>"+ "<img src='http://www.google.com" + data_split[2] + "' />" +"</div>");
      $("#weather_widget").append("<div id='weather_conditions'></div>");
      $("#weather_conditions").append("<p id='weather_country'>" + data_split[3] + "</p>" + "<br />");
      $("#weather_conditions").append("<p id='weather_temp'>" + "Temp: " +data_split[0] + "° F" + "</p>");
      $("#weather_conditions").append("<p id='weather_hump'>" + data_split[1] +  "</p>");
      $("#weather_conditions").append("<p id='weather_hump'>"  + data_split[5] +  "</p>");
      $("#weather_conditions").append("<p id='weather_resume'>"  + data_split[4] +  "</p>");
      $("#weather_widget").append("<div class='forecast-box'>" + "</div>");
      var day_names = data_split[6].split("#");
      var low_temps = data_split[7].split("#");
      var high_temps = data_split[8].split("#");
      var conditions = data_split[9].split("#");
      var icons = data_split[10].split("#");
      var zip_code = data_split[11];
      var dates = data_split[12].split("#");
      var times = data_split[13].split("#");
      var temps = data_split[14].split("#");
      var icons2 = data_split[15].split("#");

      $(".forecast-box").append("<div class='forecast-informations' id='forecast-1'>" + "</div>");
      create_forecast_box("forecast-1", day_names[0], low_temps[0], high_temps[0], conditions[0], icons[0])

      $(".forecast-box").append("<div class='forecast-informations' id='forecast-2'>" + "</div>");
      create_forecast_box("forecast-2", day_names[1], low_temps[1], high_temps[1], conditions[1], icons[1])

      $(".forecast-box").append("<div class='forecast-informations' id='forecast-3'>" + "</div>");
      create_forecast_box("forecast-3", day_names[2], low_temps[2], high_temps[2], conditions[2], icons[2])

      $(".forecast-box").append("<div class='forecast-informations' id='forecast-4'>" + "</div>");
      create_forecast_box("forecast-4", day_names[3], low_temps[3], high_temps[3], conditions[3], icons[3])

      document.getElementById("hourly-forecast-box").innerHTML = "";
      $("#hourly-forecast-box").append("<h4> Hourly Forecast For " + data_split[3] + "</h4>");
      $("#hourly-forecast-box").append("<div id='hourly-forecast' style=' height: 350px;overflow: auto;margin: 0 auto;'></div>");
      $("#hourly-forecast").append("<table id='andraw'> <tr> <th>Date</th><th>Time</th><th>Temp</th><th>&nbsp;</th></tr></table>");
      for(var i=0;i<dates.length;i++){
         create_hourly_forecast_rows("andraw", dates[i], times[i], temps[i], icons2[i]);
      }
      radar_1 = "<script src='//www.gmodules.com/ig/ifr?url=http://gmapsflighttracker.com/ghp/gmaps-us-weather-radar.xml&amp;up_loc='"
      radar_2 = '&amp;up_zoom=Metro&amp;up_map_height=250&amp;up_background=Map&amp;up_show_station=1&amp;up_show_weather_overv=0&amp;up_show_radar_upd=0&amp;up_font_scale=100&amp;up_Flash_Open=&amp;up_opac=0.7&amp;up_DS=&amp;up_Selected_Map_Type=&amp;up_Min_Magnitude=4.0&amp;up_traffic=0&amp;up_GEplugin=0&amp;up_KML_Overlay=&amp;up_cloud_opac=0.4&amp;up_centeronzipcode=0&amp;up_centerongeoloc=0&amp;up_mousewheelzooms=1&amp;up_zip_cached=&amp;up_zip_cached_geocoord=&amp;synd=open&amp;w=320&amp;h=215&amp;title=&amp;border=%23ffffff%7C3px%2C1px+solid+%23999999&amp;output=js'
      $("#radar-w").innerHTML = "";
      $("#radar-w").append(radar_1 + zip_code + radar_2 );
      show_thumbnail();
    }
  });

}

function create_hourly_forecast_rows(id_el, date, time, temp, icon){
  $("#"+id_el).append("<tr> <td>"+date+"</td><td>"+time+"</td><td>"+temp+"</td><td>"+ "<image src=" + "'" + icon + "'" + "/>" + "</td></tr>");
}

function create_forecast_box(id_el, day, low_t, high_t, cond, icon){
  $("#"+id_el).append("<div class='weather_img_f'>" + "<img id='weather_img' src='http://www.google.com" + icon + "' />" + "</div>");
  $("#"+id_el).append("<div id='weather_conditions_f'>" + "<p id='weather_country'>" + day + "</p>" + "<p id='weather_temp'>" + "Low: " + low_t + "° F" + "</p>" +  "<p id='weather_temp'>" + "Low: " + high_t + "° F" + "</p>" + "<p id='weather_resume'>"  + cond +  "</p>"+ "</div>");
}

function callback(results, status) {
  nearCoords = [];
  nearPlaces = [];
  if (status == google.maps.places.PlacesServiceStatus.OK) {
    document.getElementById("nearby-places").innerHTML = "<br />Nearby Locations<br /><select id='adr' style='width:200px' onchange='change_weather(this.value)' ></select>"
    for (var i = 0; i < results.length; i++) {
      nearCoords[i] = results[i].geometry.location;
      nearPlaces[i] = results[i].name;
      $("#adr").append("<option value=" + i + ">" + results[i].name + "</option>");
    }
  }
  show_thumbnail();
}