class BiomeSerializer < ActiveModel::Serializer
  attributes :id, :biome_name, :temp_range, :ecosystems, :biodiversity, :image
end
