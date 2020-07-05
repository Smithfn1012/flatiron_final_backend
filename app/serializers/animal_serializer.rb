class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :species, :lifespan, :size, :prey, :predators, :location, :other_info, :endangered, :biome_id, :image, :comments 
end
