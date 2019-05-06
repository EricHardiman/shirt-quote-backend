class Quote < ApplicationRecord
  belongs_to :user
  has_many :images, :dependent => :destroy

  def self.get_quote
    quote = Quote.all.last
    puts quote.country
  end
end
