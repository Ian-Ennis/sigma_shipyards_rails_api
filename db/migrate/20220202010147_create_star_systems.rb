class CreateStarSystems < ActiveRecord::Migration[7.0]
  def change
    create_table :star_systems do |t|
      t.string :name
      t.integer :distance
      t.string :mission_complexity
      t.string :habitibility_chance

      t.timestamps
    end
  end
end