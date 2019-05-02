class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :org_name, :add_one, :quote_number, :add_two, :city, :state, :zipcode, :country, :email, :color, :front, :back, :sizes, :notes
  has_one :user
end
