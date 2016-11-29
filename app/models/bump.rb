class Bump < ActiveRecord::Base
	belongs_to :user
	has_many :donatives
end
