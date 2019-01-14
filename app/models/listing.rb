class Listing

    @@all=[]
    def initialize(city_name)
        @city_name=city_name
        @@all<<self
    end

    def city_name
        @city_name
    end

    def guests
        result=[]
        Trip.all.select do |trip| 
            if trip.listing == self 
               result<< trip.guest
            end
        end
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def trip_count
        trips.count
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city_name)
        @@all.select {|listing|listing.city_name ==city_name}
    end

    def self.most_popular
        listing_hash={}
        @@all.uniq.each do |listing|
            count=0
            @@all.each do |listing|
                if listing == listing
                    count+=1
                    listing_hash[listing]=count
                end
            end
        end
        listing_hash.each.sort_by {|key, value| value}[0]
    end


end
