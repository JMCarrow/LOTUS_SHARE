class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @plants = Plant.all
    @plant = @plants[0..8]
    @carousel1 = @plant[0..2]
    @carousel2 = @plant[3..5]
    @carousel3 = @plant[6..8]
  end
end
