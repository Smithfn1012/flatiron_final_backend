class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :species
      t.string :lifespan
      t.string :size
      t.string :prey
      t.string :predators
      t.string :location
      t.string :other_info
      t.boolean :endangered
      t.integer :biome_id
      t.string :image

      t.timestamps
    end
  end
end
