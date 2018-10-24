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

    def pickup(name)
        if @rider_list.length < @seats
          @rider_list << name
          return true
        else
          return false
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

  def assignRider
    while @riderQueue.length > 0
      if @taxiQueue[0].pickup(@riderQueue[0])
        @riderQueue.shift()
      elsif
        @taxiQueue.shift()
      end
    end
  end
end

taxi_service = TaxiService.new
taxi_service.addRider("Thel 'Vadam")
taxi_service.addRider("Avery Johnson")
taxi_service.addRider("Katherine Halsey")
taxi_service.addRider("Jacob Keyes")
taxi_service.addRider("Noble 6")

taxi0 = Taxi.new("Literally the guy from Taxi Driver", 1, "Checker", "A10", "TLKN2ME")
taxi1 = Taxi.new("James Kirk", 1, "Chevrolet", "Corvette", "CPT LOG")
taxi2 = Taxi.new("Miranda Keyes", 1, "UNSC", "In Amber Clad", "002552")
taxi3 = Taxi.new("JC Denton", 1, "Page Ind.", "Something", "A BOMB")
taxi4 = Taxi.new("John Smith", 1, "Honda", "Odyssey", "2BORING")

taxi_service.addTaxi(taxi0)
taxi_service.addTaxi(taxi1)
taxi_service.addTaxi(taxi2)
taxi_service.addTaxi(taxi3)
taxi_service.addTaxi(taxi4)

p taxi_service.assignRider
p taxi0
p taxi_service.riderQueue
p taxi1
p taxi2
