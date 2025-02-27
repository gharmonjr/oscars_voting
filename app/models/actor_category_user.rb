class ActorCategoryUser < ApplicationRecord
  belongs_to :user
  belongs_to :actor_category
end
