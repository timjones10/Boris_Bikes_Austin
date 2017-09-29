require_relative "bike"


class DockingStation

  attr_reader :bike

  def release_bike
    fail "bike not available" unless @bike
    @bike
  end

  def dock_bike(bike)
    fail "Docking Station full" unless @bike.nil?
    @bike = bike
  end

end
