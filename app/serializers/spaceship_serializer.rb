# frozen_string_literal: true

class SpaceshipSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user_id, :spaceship_name, :credits, :range, :strength, :nuclearCount, :fusionCount,
             :antimatterCount, :carbonCount, :grapheneCount, :neutronCount
end
