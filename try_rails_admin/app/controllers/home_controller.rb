class HomeController < ApplicationController
  before_filter :require_login
  
  require 'net/http'
  require Rails.root + 'lib/google-weather/lib/google_weather'
  
  def index
    ip_address = request.remote_ip

    @lat, @lng, @city, @state, @country = ApiCaller.call_geoplugin_to_get_lat_and_lng(ip_address)
    lat_g, lng_g = ApiCaller.convert_to_google_weather_coordinate_format(@lat, @lng)

    #@temp_f, @humidity, @icon, @resume, @wind, @forecast_conditions, @zip_code = ApiCaller.call_google_weather_api(lng_g, lat_g, @lng, @lat)
    
    #@day_names, @low_temps, @high_temps, @conditions, @icons = ApiCaller.convert_forecast_to_string(@forecast_conditions)

    #@temp = @temp_f.to_i
   # @temp_c = ((@temp-32)*5)/9  
    
    @products= Product.last(6).reverse
  end

 
  
end
