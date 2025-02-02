class Show < ActiveRecord::Base

    def self.highest_rating
        self.maximum(:rating)
    end

    def self.most_popular_show
        self.where("rating = ?", self.highest_rating).first
    end

    # lowest_rating: returns the lowest value in the ratings column.
    def self.lowest_rating
        self.minimum(:rating)
    end

    # least_popular_show: returns the show with the lowest rating.
    def self.least_popular_show
        self.where("rating = ?", self.lowest_rating).first
    end

    # ratings_sum: returns the sum of all of the ratings.
    def self.ratings_sum
        self.sum(:rating)
    end

    # popular_shows: returns an array of all of the shows that have a rating greater than 5. 
    # hint: use the where Active Record method.

    def self.popular_shows
        self.where("rating > 5")
    end

    # shows_by_alphabetical_order: returns an array of all of the shows sorted by alphabetical order 
    # according to their names. hint: use the order Active Record method.
    def self.shows_by_alphabetical_order
        self.order(:name)
    end

    
end





# ratings_sum: returns the sum of all of the ratings.

# popular_shows: returns an array of all of the shows that have a rating greater than 5. 
# hint: use the where Active Record method.

# shows_by_alphabetical_order: returns an array of all of the shows sorted by alphabetical order 
# according to their names. hint: use the order Active Record method.