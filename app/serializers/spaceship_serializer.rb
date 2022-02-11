class SpaceshipSerializer < ActiveModel::Serializer
  attributes :id, :spaceship_name, :credits, :range, :strength, :nuclearCount, :fusionCount, :antimatterCount, :carbonCount, :grapheneCount, :neutrinoCount
end
