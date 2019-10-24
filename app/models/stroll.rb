class Stroll < ApplicationRecord
	belongs_to :dog_sitter
	belongs_to :city
	# has_many :dog_strolls
	# has_many :dogs, through: :dog_strolls
end
