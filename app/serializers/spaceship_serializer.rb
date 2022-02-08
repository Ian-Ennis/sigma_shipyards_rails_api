class SpaceshipSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :spaceship_name, :credits, :range, :strength
end
