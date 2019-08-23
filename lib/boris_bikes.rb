
class DockingStation
  attr_reader :all_bikes

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

    @all_bikes.count >= 20
  end
end

def empty?
  @all_bikes.empty?
end

class Bike
  def working?
    return true
  end
end
