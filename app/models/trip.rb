class Trip
    @@all=[]

    def initialize(guest, listing, duration)
        @guest=guest
        @listing=listing
        @duration=duration
        @@all<<self
    end

    def guest
        @guest
    end

    def listing
        @listing
    end

    def self.all
        @@all
    end

end

