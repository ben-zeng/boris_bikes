
class DockingStation
  attr_reader :bike

  def station_full?
    true #bikes_docked == capacity
  end

  def release_bike
    fail "No Bikes available" unless @bike
    @bike
  end

  def dock_bike(live_bike)
    fail "Unable to dock: docking station full" if station_full?
    @bike = live_bike
  end

end

class Bike
  def working?
    return true
  end
end
