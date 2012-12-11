class EntrancesController < ApplicationController
  def index
    @subways = []
  end #could also start  @subways = Subway.all

  def search
    @subways = Subway.text_search(params[:query])
  end
end
