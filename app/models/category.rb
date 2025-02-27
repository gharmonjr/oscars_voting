class Category < ApplicationRecord
  has_many :actor_categories
  has_many :movie_categories
end
