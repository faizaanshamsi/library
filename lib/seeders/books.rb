module Seeders
  module Books

    class << self
      def seed

        books.each do |buk|
          Book.find_or_initialize_by(title: buk[:title]) do |book|
            book.title = buk[:title]
            book.author = buk[:author]
            book.rating = buk[:rating]
            book.save
          end
        end

      end

      def books #Title, author, rating
        [
          {title: 'great book', author: 'worst author', rating: 99 },
          {title: 'awful book', author: 'best author', rating: 56 },
          {title: 'best book', author: 'medium author', rating: 33 },
        ]
      end
    end

  end
end
