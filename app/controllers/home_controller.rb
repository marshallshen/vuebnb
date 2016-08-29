class HomeController < ApplicationController
  def show
    @places = Place.all
    render 'show'
  end
end
