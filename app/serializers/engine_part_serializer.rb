class EnginePartSerializer < ActiveModel::Serializer
  attributes :id, :part_name, :tank_size, :cost
end
