require 'spec_helper'

describe Seeders::Books do
  let(:seeder) { Seeders::Books }

  it 'seeds books' do
    seeded_question = Seeders::Books.books.first
    seeder.seed
    expect(Book.all.last.title).to eql("best book")
  end

  it 'does not create duplicates' do
    seeder.seed
    count_after_seed = Book.count
    seeder.seed
    expect(Book.count).to eql(count_after_seed)
  end
end
