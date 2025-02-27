class ActorCategoriesController < ApplicationController
  before_action :require_login
  def index
    @actor_categories = ActorCategory.where(year: 2025).includes(:actor, :category)
  end
end
