class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :species
      t.string :size
      t.string :predators
      t.string :location
      t.string :seed_distribution
      t.string :other_info
      t.integer :biome_id
      t.string :image

      t.timestamps
    end
  end
end
