require_relative "bike"


class DockingStation

  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    fail "Bike not available" if @bikes.empty?
     @bikes.pop
  end

  def dock_bike(bike)
fail "Docking station full" if @bikes.count >= 20
    @bikes << bike
    # @bikes = bike
  end

end
