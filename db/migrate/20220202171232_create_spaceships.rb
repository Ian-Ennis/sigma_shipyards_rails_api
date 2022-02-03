class CreateSpaceships < ActiveRecord::Migration[7.0]
  def change
    create_table :spaceships do |t|
      t.string :spaceship_name

      t.timestamps
    end
  end
end
