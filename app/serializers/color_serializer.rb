class ColorSerializer < ActiveModel::Serializer
  attributes :name, :name2, :multi, :front, :back, :actual_color
  has_one :style
end
