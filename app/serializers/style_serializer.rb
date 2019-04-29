class StyleSerializer < ActiveModel::Serializer
  attributes :id, :name, :front, :back, :size
  has_one :manufacture
  has_many :colors
end
