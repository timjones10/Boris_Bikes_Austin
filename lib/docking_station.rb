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
    fail "Docking station full" unless !full?
    @bikes << bike
    # @bikes = bike
  end

  private
  
  def full?
    @bikes.count >= 20
  end

end
