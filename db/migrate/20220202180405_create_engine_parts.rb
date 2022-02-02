class CreateEngineParts < ActiveRecord::Migration[7.0]
  def change
    create_table :engine_parts do |t|
      t.string :part_name
      t.integer :tank_size
      t.integer :cost

      t.timestamps
    end
  end
end
