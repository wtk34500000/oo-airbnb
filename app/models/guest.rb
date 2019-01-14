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
      Guest.all.select do |guest|
        guest.trip_count >1
      end
      #   result=[]
      #   Trip.all.uniq do |trip1|
      # #  puts guest1
      #     count=0
      #     Trip.all.each do |trip|
      #       if trip.guest==trip1.guest
      #        count+=1
      #       end
      #     end
      #     if count > 1
      #         result<<trip1.guest
      #     end
      #  end
      #   result.uniq
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