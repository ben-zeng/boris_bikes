require_relative "../lib/boris_bikes"

describe DockingStation do

  #let(:bike) { Bike.new }

  it "responded to release_bike method" do
    expect(subject).to respond_to(:release_bike)
  end

  it "Docking Station responds to working?" do
    station = DockingStation.new
    bike = Bike.new
    station.dock_bike(bike)
    expect(station.release_bike).to respond_to(:working?)
  end

  it "Docking Station gets a working bike" do
    station = DockingStation.new
    bike = Bike.new
    station.dock_bike(bike)
    expect(station.release_bike.working?).to eq(true)
  end

  it "responds to dock_bike" do
    expect(DockingStation.new).to respond_to(:dock_bike)
  end

  it "dock_bike takes an argument" do
    expect(DockingStation.new).to respond_to(:dock_bike).with(1).argument
  end

  it "check bikes at docking station" do
    bike = Bike.new
    expect((DockingStation.new).dock_bike(bike)).to eq bike
  end

  it "returns docked bikes" do
    station = DockingStation.new
    bike = Bike.new
    expect(station.dock_bike(bike)).to eq bike
  end

  it "Raise error if no bikes at docking station" do
    expect{DockingStation.new.release_bike}.to raise_error("No Bikes available")
    end

  it "Raise error if docking station at capacity" do
      station = DockingStation.new
      bike = Bike.new
      DockingStation::DEFAULT_CAPACITY.times do
        station.dock_bike Bike.new
      end

      expect{station.dock_bike(bike)}.to raise_error("Unable to dock: docking station full")
      end

  end
