class Categorization < ActiveRecord::Base

  validates_presence_of :book
  validates_presence_of :category

  belongs_to :book,
    inverse_of: :categorizations

  belongs_to :category,
    inverse_of: :categorizations
end
