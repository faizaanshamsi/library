class Book < ActiveRecord::Base
  has_many :checkouts,
    inverse_of: :book,
    dependent: :destroy


  validates_presence_of :title
  validates_numericality_of :rating, only_integer: true, allow_nil: false,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 100
end
