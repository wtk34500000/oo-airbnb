class Guest

    @@all=[]
    def initialize(name)
        @name=name
        @@all<<self
    end

    def name
        @name
    end

    def listings
        result=[]
        Trip.all.each do|trip|
            if trip.guest == self 
                result<<trip.listing
            end
        end
        result
    end

    def trips
        Trip.all.select {|trip| trip.guest == self}
    end

    def trip_count
        trips.count
    end

    def self.all
        @@all 
    end

    def self.pro_traveler
        result=[]
       @@all.each.uniq do |guest|
        count=0
        @@all.each do |guest|
          if guest==guest
            count+=1
            if count > 1
            result<<result
            end
          end
        end
       end
        result.uniq
    end

    def self.find_all_by_name(guest_name)
        result=[]
        Trip.all.select do |trip|
            if trip.guest.name==guest_name
                result << trip.guest
            end
        end
        result
    end

end
