class StarSystemSerializer < ActiveModel::Serializer
  attributes :id, :name, :distance, :mission_complexity, :habitibility_chance, :shields_required
end
