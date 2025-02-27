class MovieCategory < ApplicationRecord
  belongs_to :movie
  belongs_to :category
  has_many :movie_category_users
end
