require 'spec_helper'

describe Seeders::Books do
  let(:seeder) { Seeders::Books }

  it 'seeds books' do
    seeded_book = Seeders::Books.books.first
    seeder.seed
    expect(Book.where(title: seeded_book[:title])).to be_present
  end

  it 'does not create duplicates' do
    seeder.seed
    count_after_seed = Book.count
    seeder.seed
    expect(Book.count).to eql(count_after_seed)
  end
end
