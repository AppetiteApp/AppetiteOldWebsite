class HomeController < ApplicationController
  def index
    @advertisements = Advertisement.latest(10)
  end
end
