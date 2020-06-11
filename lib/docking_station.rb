class DockingStation
  attr_reader :bikes
  
  def initialize
    @bikes = []
  end
  
  def release_bike
    if @bikes == []
      raise "no bike available"
    else
      Bike.new
    end
  end

  def dock_bike(bike)
    @bikes << bike
    "bike is docked"
  end
  
end