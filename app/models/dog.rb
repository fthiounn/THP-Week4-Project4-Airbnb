class Dog < ApplicationRecord  
	has_many :dog_strolls
	has_many :strolls, through: :dog_strolls
	belongs_to :city
end
