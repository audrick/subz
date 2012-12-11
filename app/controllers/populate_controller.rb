class PopulateController < ApplicationController
  def index
    @subways = Subway.all
  end
  
  def create
    x = HTTParty.get('http://data.cityofnewyork.us/api/views/drex-xx56/rows.json')
    y = JSON(x.body)
    z = y['data']
    z.each do |z|
      @name = z[-3]
      @line = z[-1]
      @long = z[-4][2]
      @lat = z[-4][1]
      @subway = Subway.create(:name => @name, :lat => @lat, :long => @long, :line => @line)
    end
    redirect_to entrances_path
  end
end


# cleaner way of doing above: 
#     z = y['data'].each do |z|
      # @name = z[-3]
      # @line = z[-1]
      # @long = z[-4][2].to_f
      # @lat = z[-4][1].to_f
#