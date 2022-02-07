class CreateSpaceships < ActiveRecord::Migration[7.0]
  def change
    create_table :spaceships do |t|
      t.string :spaceship_name
      t.integer :credits
      t.integer :range
      t.integer :strength
      t.references :user, type: :integer

      t.timestamps
    end
  end
end
