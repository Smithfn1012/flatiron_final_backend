class Biome < ApplicationRecord
  has_many :animals
  has_many :plants
end
