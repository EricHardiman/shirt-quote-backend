class StyleSerializer < ActiveModel::Serializer
  attributes :id, :name, :front, :back, :size, :starting_color, :category, :gender, :age_group
  has_one :manufacture
  has_many :colors
end
