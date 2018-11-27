class Pfavorite < ApplicationRecord
	belongs_to :user
	belongs_to :psound
end
