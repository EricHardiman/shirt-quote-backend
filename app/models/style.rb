class Style < ApplicationRecord
  belongs_to :manufacture
  has_many :colors
end
