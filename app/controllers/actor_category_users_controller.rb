class ActorCategoryUsersController < ApplicationController
  before_action :require_login
  def create
    @acu = ActorCategoryUser.new(actor_category_user_params)
    @acu.user = current_user
    if @acu.save
      redirect_to category_path(@acu.actor_category.category), notice: "Vote recorded!"
    else
      redirect_to category_path(@acu.actor_category.category), alert: "Vote failed."
    end
  end

  private

  def actor_category_user_params
    params.require(:actor_category_user).permit(:actor_category_id, :vote)
  end
end
