class HomeController < ApplicationController
  def index
    @testing = Testing.first
  end
end
