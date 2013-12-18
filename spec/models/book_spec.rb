require 'spec_helper'

describe Book do
  it {should validate_presence_of(:title)}

  it {should validate_numericality_of(:rating).is_greater_than_or_equal_to(0)}

  it {should validate_numericality_of(:rating).is_less_than_or_equal_to(100)}
end
