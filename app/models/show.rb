class Show < ActiveRecord::Base
    def self.highest_rating #returns the highest value in the ratings column
      maximum('rating')
    end

    def self.most_popular_show #returns the show with the highest rating
       all.find do |show|
         show.rating == highest_rating
       end
    end

    def self.lowest_rating #returns the lowest value in the ratings column
      minimum('rating')
    end

    def self.least_popular_show #returns the show with the lowest rating
      all.find do |show|
        show.rating == lowest_rating
      end
    end

    def self.ratings_sum #returns the sum of all of the ratings
      sum('rating')
    end

    def self.popular_shows #returns array of all shows having rating greater than 5
      all.select do |show|
        show.rating > 5
      end
    end

    def self.shows_by_alphabetical_order #returns array of all shows sorted alphabetically by name
      all.order('name')
    end

end
