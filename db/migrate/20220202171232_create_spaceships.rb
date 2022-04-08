class CreateSpaceships < ActiveRecord::Migration[7.0]
  def change
    create_table :spaceships do |t|
      t.string :spaceship_name
      t.integer :credits
      t.integer :range
      t.integer :strength
      t.integer :nuclearCount
      t.integer :fusionCount
      t.integer :antimatterCount
      t.integer :carbonCount
      t.integer :grapheneCount
      t.integer :neutronCount
      t.references :user, type: :integer

      t.timestamps
    end
  end
end