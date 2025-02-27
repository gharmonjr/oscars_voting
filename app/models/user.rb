class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 10}, if: :password_required?

  has_many :actor_category_users
  has_many :movie_category_users

  private

  def password_required?
    password_digest.blank? || password.present?
  end
end
