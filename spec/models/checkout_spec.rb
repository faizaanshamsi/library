require 'spec_helper'

describe Checkout do

  checkout = FactoryGirl.create(:checkout)

  it { should validate_presence_of(:book) }

  it 'validates book is not checked out by default' do
    expect(checkout.checked_out).to eql(false)
  end

end
