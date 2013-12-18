require 'spec_helper'

describe Categorization do

  it { should validate_presence_of(:book) }
  it { should validate_presence_of(:category) }
end
