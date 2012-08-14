class ApiCaller 
  require 'net/http'
  require Rails.root + 'lib/google-weather/lib/google_weather'

  def self.call_geoplugin_to_get_lat_and_lng(ip_address)

    lat = ""
    lng = ""
    city = ""
    state = ""
    country = ""
    
    begin

      if Rails.env == "production" and ip_address != "127.0.0.1"
        api_address = "http://www.geoplugin.net/json.gp?ip=#{ip_address}&callback=?"    
      else
        api_address = "http://www.geoplugin.net/json.gp?callback=?"
      end
      
      url = URI.parse(api_address)
      #req = Net::HTTP::Get.new(url)
      res = Net::HTTP.start(url.host, url.port) {|http|
        http.get(api_address)
      }
      body =  res.body
      lng = body.delete("'\"'").delete("'\n'").split(",")[9].split(":")[1]
      lat = body.delete("'\"'").delete("'\n'").split(",")[10].split(":")[1]
      city = body.delete("'\"'").delete("'\n'").split(",")[2].split(":")[1]
      state = body.delete("'\"'").delete("'\n'").split(",")[3].split(":")[1]
      country = body.delete("'\"'").delete("'\n'").split(",")[7].split(":")[1]
 
    rescue => e
      Rails.logger.info "Error when access geoplugin \n #{e.inspect}"
      #HoptoadNotifier.notify(e)
    end
     
    return lat, lng, city, state, country
  end

  def self.convert_forecast_to_string(forecast)
    day_names = []
    low_temps = []
    high_temps = []
    conditions = []
    icons = []

    forecast.each do |fc|
      day_names << fc.day_of_week
      low_temps << fc.low
      high_temps << fc.high
      conditions << fc.condition
      icons << fc.icon
    end
    return day_names.join('#'), low_temps.join('#'), high_temps.join('#'), conditions.join('#'), icons.join('#')
  end

  def self.convert_to_google_weather_coordinate_format(old_lat, old_lng)
    new_lat = google_format(old_lat)
    new_lng = google_format(old_lng)
    return new_lat, new_lng
  end

  def self.google_format(old_value)
    new_value = []
    unless old_value.blank?
      old_value = old_value.split("")
      for i in 0..8 do
        if old_value[i].nil?
          new_value << "0"
        elsif old_value[i] != "."
          new_value << old_value[i]
        end
      end
    end
    new_value = new_value.slice(0..7)
    new_value << "0" if new_value.include?("-")
    new_value = new_value.join(",").delete(",")
    new_value
  end

  def self.call_google_weather_api(lat, lng, ori_lat, ori_lng)
    temp_f = ""
    humidity = ""
    icon = ""
    resume = ""
    wind = ""
    
    new_lat = lat
    new_lng = lng

    new_ori_lat = ori_lat
    new_ori_lng = ori_lng

    if lat.include?("-")
      new_lat = lng
      new_lng = lat
     
    end

    if ori_lat.include?("-")
      new_ori_lat = ori_lng
      new_ori_lng = ori_lat
    end
    
    weather = GoogleWeather.new([new_lat, new_lng])
    current_conditions = weather.current_conditions
    temp_f = current_conditions.temp_f
    humidity = current_conditions.humidity
    icon = current_conditions.icon
    resume = current_conditions.condition
    wind = current_conditions.wind_condition
    zip_code = ""
    begin
       addr = Geocoder.address [new_ori_lat, new_ori_lng]
       if addr and addr.include?("USA")
         addr_split = addr.split(",")
         if addr_split.size == 4
           zips = addr_split[2].split(" ")
           zip_code = zips[1] if zips.size > 1
         end
       end

    rescue => e
      Rails.logger.info "Error when searching zipcode \n #{e.inspect}"
      #HoptoadNotifier.notify(e)
    end

    return temp_f, humidity, icon, resume, wind, weather.forecast_conditions, zip_code
  end

  def self.tempc(temp_f)
    tempf = temp_f.to_i
    temp_c= ((tempf-32)*5)/9
    
    return temp_c  
  end
  
end

