class SpaceshipSerializer < ActiveModel::Serializer
  attributes :id, :spaceship_name, :credits, :range, :strength
end
