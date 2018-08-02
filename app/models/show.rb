class Show < ActiveRecord::Base

  def self.highest_rating
    Show.all.maximum(:rating)
  end

  def self.lowest_rating
    Show.all.minimum(:rating)
  end

  def self.most_popular_show
    Show.all.find do |show|
      show.rating == Show.highest_rating
    end
  end

  def self.least_popular_show
    Show.all.find do |show|
      show.rating == Show.lowest_rating
    end
  end

  def self.ratings_sum
    Show.all.sum(:rating)
  end

  def self.popular_shows
    Show.all.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.all.order(:name)
  end

end # end of Show class
