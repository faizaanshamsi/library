module Seeders
  module Categories

    class << self
      def seed

        categ.each do |cat|
          Category.find_or_initialize_by(name: cat[:name]) do |category|
            category.name = cat[:name]
            category.save
          end
        end

      end

      def categ
        [
          {name: 'action' },
          {name: 'horror' },
          {name: 'adventure' }
        ]
      end
    end

  end
end
