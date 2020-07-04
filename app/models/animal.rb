class Animal < ApplicationRecord
  belongs_to :biome
  has_many :comments
  validates :species, :lifespan, :size, :prey, :predators, :location, :other_info, :biome_id, :image, presence: :true
end
