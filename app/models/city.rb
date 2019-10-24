class City < ApplicationRecord
  has_many :dog_sitters
  has_many :strolls
  has_many :dogs
end
