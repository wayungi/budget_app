class LandingsController < ApplicationController
  def index
    redirect_to categories_path if user_signed_in?
  end
end

# redirect_to groups_path if user_signed_in?
