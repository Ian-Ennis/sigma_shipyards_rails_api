class CreateHullParts < ActiveRecord::Migration[7.0]
  def change
    create_table :hull_parts do |t|
      t.string :part_name
      t.integer :hull_strength
      t.integer :cost

      t.timestamps
    end
  end
end
