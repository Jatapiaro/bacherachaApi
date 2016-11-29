class Donative < ActiveRecord::Base
  belongs_to :user
  belongs_to :bump
end
