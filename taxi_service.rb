class Taxi
    attr_accessor :driver, :seats, :make, :model, :lic_plate, :rider_list
    def initialize(driver, seats, make, model, lic_plate)
        @driver = driver
        @seats = seats
        @make = make
        @model = model
        @lic_plate = lic_plate
        @rider_list = []
    end

    def pickup
        taxi_service = TaxiService.new
        rider = taxi_service.riderQueue()
        if @seats > rider_list.length
            rider_list << rider
        end
    end
end

class TaxiService
    attr_accessor :riderQueue, :taxiQueue
    def initialize
        @riderQueue = ["test"]
        @taxiQueue = []
    end

    def addRider(rider)
        @riderQueue << rider
    end

    def addTaxi(taxi)
        @taxiQueue << taxi
    end

    def assignRider
    end
end

taxi_service = TaxiService.new
taxi_service.addRider("Thel 'Vadam")
taxi_service.addRider("Avery Johnson")
taxi_service.addRider("Katherine Halsey")
taxi_service.addRider("Jacob Keyes")
taxi_service.addRider("Noble 6")

taxi0 = Taxi.new("Literally the guy from Taxi Driver", 2, "Checker", "A10", "TLKN2ME")
taxi1 = Taxi.new("James Kirk", 1, "Chevrolet", "Corvette", "CPT LOG")
taxi2 = Taxi.new("Miranda Keyes", 3, "UNSC", "In Amber Clad", "002552")
taxi3 = Taxi.new("JC Denton", 2, "Page Ind.", "Something", "A BOMB")
taxi4 = Taxi.new("John Smith", 4, "Honda", "Odyssey", "2BORING")

taxi_service.addTaxi(taxi1)
taxi_service.addTaxi(taxi1)
taxi_service.addTaxi(taxi2)
taxi_service.addTaxi(taxi3)
taxi_service.addTaxi(taxi4)

