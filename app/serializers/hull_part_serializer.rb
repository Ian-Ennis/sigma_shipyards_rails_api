class HullPartSerializer < ActiveModel::Serializer
  attributes :id, :part_name, :hull_strength, :cost
end
