class ActorCategory < ApplicationRecord
  belongs_to :actor
  belongs_to :category
  has_many :actor_category_users
end
