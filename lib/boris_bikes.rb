class DockingStation
  attr_reader :all_bikes

  DEFAULT_CAPACITY = 20
  def initialize
    @all_bikes = []
  end

  def release_bike
    fail "No Bikes available" if empty?
    @all_bikes.pop
  end

  def dock_bike(bike)
    fail "Unable to dock: docking station full" if full?
    @all_bikes << bike
    bike
  end

  private

  def full?

    @all_bikes.count >= DEFAULT_CAPACITY
  end
end

def empty?
  @all_bikes.empty?
end

class Bike
  def working?
    true
  end
end
