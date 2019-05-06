class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :full_name, :org_name, :shirt_type, :add_one, :status, :quote_number, :add_two, :city, :state, :zipcode, :country, :email, :color, :front, :back, :sizes, :notes, :images
  has_one :user

  def image_url
    object.images.map {|image| image.url}
  end
end
