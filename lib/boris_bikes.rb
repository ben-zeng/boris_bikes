
class DockingStation
  attr_reader :all_bikes

  def initialize
    @all_bikes = []
  end



  def release_bike
    fail "No Bikes available" if @all_bikes.empty?
    @all_bikes.pop
  end

  def dock_bike(bike)
    fail "Unable to dock: docking station full" if @all_bikes.count >= 20
    @all_bikes << bike
    bike
  end

end

class Bike
  def working?
    return true
  end
end
