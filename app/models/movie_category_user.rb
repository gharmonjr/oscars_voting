class MovieCategoryUser < ApplicationRecord
  belongs_to :user
  belongs_to :movie_category
end
