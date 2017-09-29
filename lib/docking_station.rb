#require_relative "./bike"
require File.dirname(__FILE__) + "/bike"

class DockingStation

  attr_reader :bike

  def release_bike
    fail "bike not available" unless @bike
    @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

end
