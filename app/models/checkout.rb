class Checkout < ActiveRecord::Base
  belongs_to :book,
    inverse_of: :checkouts

  validates_presence_of :book
end
