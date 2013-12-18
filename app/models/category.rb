class Category < ActiveRecord::Base
  validates_uniqueness_of :name
  validates :name, :length => { :in => 1..255 }


end
