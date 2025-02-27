class MovieCategoryUsersController < ApplicationController
  before_action :require_login
  def create
    @mcu = MovieCategoryUser.new(actor_category_user_params)
    @mcu.user = current_user
    if @mcu.save
      redirect_to category_path(@mcu.movie_category.category), notice: "Vote recorded!"
    else
      redirect_to category_path(@mcu.actor_category.category), alert: "Vote failed."
    end
  end

  private

  def actor_category_user_params
    params.require(:actor_category_user).permit(:actor_category_id, :vote)
  end
end
