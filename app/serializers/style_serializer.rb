class StyleSerializer < ActiveModel::Serializer
  attributes :id, :name, :front, :back, :size, :starting_color
  has_one :manufacture
  has_many :colors
end
