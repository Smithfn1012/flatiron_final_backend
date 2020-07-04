class CreateBiomes < ActiveRecord::Migration[6.0]
  def change
    create_table :biomes do |t|
      t.string :biome_name
      t.string :temp_range
      t.string :ecosystems
      t.string :biodiversity
      t.string :image

      t.timestamps
    end
  end
end
