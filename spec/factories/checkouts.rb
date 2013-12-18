# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :checkout do
    # checked_out false

    book
  end
end
