class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,:omniauthable,
          :recoverable, :rememberable, :trackable, :validatable

  has_many :bumps
  has_many :donatives
  include DeviseTokenAuth::Concerns::User
end
