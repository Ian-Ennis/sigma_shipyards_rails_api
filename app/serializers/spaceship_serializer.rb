class SpaceshipSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user_id, :spaceship_name, :credits, :range, :strength
end
