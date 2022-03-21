def self.highest_rating
    shows.maximum(":rating")
end