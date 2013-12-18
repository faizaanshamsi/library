class Category < ActiveRecord::Base
  validates_uniqueness_of :name
  validates :name, :length => { :in => 1..255 }

  has_many :categorizations,
    inverse_of: :category,
    dependent: :destroy

  has_many :books,
    through: :categorizations

end
