class MovieCategoriesController < ApplicationController
  before_action :require_login
  def index
    @movie_categories = MovieCategory.where(year: 2025).includes(:movie, :category)
  end
end
