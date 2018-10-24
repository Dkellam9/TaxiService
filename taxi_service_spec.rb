# Step 1

    # For our purposes, a taxi needs to have the following attributes:

        # driver (full name)
        # number of free seats
        # car make
        # car model
        # car license plate
        # a riders list (starts off as an empty array)
        # a method pickup that adds a name to the riders list

# Step 2

    # Taxi Service will be a class with the following attributes:

        # riderQueue (starts off as an empty array)
        # taxiQueue (starts off as an empty array)
        # an addRider method that adds a name to the riderQueue array
        # an addTaxi method that adds a Taxi object to the taxiQueue
        # an assignTaxi method that adds all queued riders to taxis -- adding people to each taxi until all of its seats are full

# Step 3

    # We now have the beginnings of a Taxi Service! Try it out by creating a new instance of your service, then a handfull of taxi instances. Try running your taxi service with some taxis and people!

# Stretch
    # Think about other functionalities this program might need (maybe a dropOff method, sorting people by destination, etc...)

 require 'rspec'
 require_relative 'taxi_service'
 
 describe "Taxi" do
    before do
        @taxi = Taxi.new
    end
    it "has a class called Taxi that is error free" do
        expect{Taxi.new}.to_not raise_error
    end

    it "has a Driver" do
        expect(@taxi.driver).to eq "Joe Smith"
    end

    it "has a number of seats" do
        expect(@taxi.seats).to eq 2
    end

    it "has a taxi make" do
        expect(@taxi.make).to eq "Ford"
    end

    it "has a taxi model" do
        expect(@taxi.model).to eq "Crown Victoria"
    end

    it "has a license plate" do
        expect(@taxi.lic_plate).to eq "7AFK237"
    end

    it "has a list of riders" do
        expect(@taxi.rider_list).to be_a Array
    end

    it "can pick up riders and add their name to the riders' list" do
        @taxi.pickup
        expect(@taxi.rider_list).to end_with "John Smith"
    end
 end

 describe "TaxiService" do
    before do
        @taxi_service = TaxiService.new
    end

    it "has a class called TaxiService that is error free" do
        expect{TaxiService.new}.to_not raise_error
    end

    it "has a riderQueue" do
        expect(@taxi_service.riderQueue).to be_a Array
    end

    it "has a taxiQueue" do
        expect(@taxi_service.taxiQueue).to be_a Array
    end

    it "can add riders to riderQueue" do
        @taxi_service.addRider("John Smith")
        expect(@taxi_service.riderQueue).to end_with "John Smith"
    end

    it "can add a taxi to taxiQueue" do
        taxi0 = Taxi.new
        @taxi_service.addTaxi(taxi0)
        expect(@taxi_service.taxiQueue.length).to eq 1
    end
 end