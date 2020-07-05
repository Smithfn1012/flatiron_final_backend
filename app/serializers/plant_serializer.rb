class PlantSerializer < ActiveModel::Serializer
  attributes :id, :species, :size, :predators, :location, :seed_distribution, :other_info, :biome_id, :image, :comments
end
