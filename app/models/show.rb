class Show < ActiveRecord::Base
    def self.highest_rating
        self.maximum(:rating)
    end

    def self.most_popular_show
        self.where(self == highest_rating).limit(1)
    end    
end

 #Show.all.select{|s| s.shows == highest_rating}