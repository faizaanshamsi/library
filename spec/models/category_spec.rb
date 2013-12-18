require 'spec_helper'

describe Category do

  it { should validate_uniqueness_of(:name) }

  it { should have_valid(:name).when('Horror', 'Mystery') }
  it { should_not have_valid(:name).when(nil) }

end
