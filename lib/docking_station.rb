require_relative "bike"


class DockingStation

  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    fail "bike not available" unless @bike
    @bike
  end

  def dock_bike(bike)
fail "Docking station full" if @bikes.count >= 20
    @bikes << bike
    # @bikes = bike
  end

end
