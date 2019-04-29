class ColorSerializer < ActiveModel::Serializer
  attributes :name, :front, :back
  has_one :style
end
