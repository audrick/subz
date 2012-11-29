class EntrancesController < ApplicationController
  def index
    @subways = Subway.all
  end
end
