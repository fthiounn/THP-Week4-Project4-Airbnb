class DogSitter < ApplicationRecord
	has_many :strolls
	has_many :dog_strolls, through: :strolls
	belongs_to :city
end
