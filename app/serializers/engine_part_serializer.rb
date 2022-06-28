class EnginePartSerializer < ActiveModel::Serializer
  attributes :id, :part_name, :range, :cost
end
