class CategoriesController < ApplicationController
  before_action :require_login
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @actor_nominations = @category.actor_categories.where(year: 2025).includes(:actor)
    @movie_nominations = @category.movie_categories.where(year: 2025).includes(:movie)
  end
end
