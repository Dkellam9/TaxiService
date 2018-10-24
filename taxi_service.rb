class Taxi
    attr_accessor :driver, :seats, :make, :model, :lic_plate, :rider_list
    def initialize
        @driver = "Joe Smith"
        @seats = 2
        @make = "Ford"
        @model = "Crown Victoria"
        @lic_plate = "7AFK237"
        @rider_list = []
    end

    def pickup
        # rider = TaxiService.riderQueue()
        rider = "John Smith"
        if @seats > rider_list.length
            rider_list << rider
        end
    end
end

class TaxiService
    attr_accessor :riderQueue, :taxiQueue
    def initialize
        @riderQueue = []
        @taxiQueue = []
    end

    def addRider(rider)
        @riderQueue << rider
    end

    def addTaxi(taxi)
        @taxiQueue << taxi
    end
end

really = Taxi.new
what = TaxiService.new
what.addTaxi(really)
p what.taxiQueue