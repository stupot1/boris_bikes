require_relative  'bike'

class DockingStation
  attr_reader :bikes, :capacity

  def initialize
    @bikes = []
    @capacity = 1
  end

  def release_bike
    if @bikes == []
      raise "no bike available"
    else
      Bike.new
    end
  end

  def dock_bike(bike)
    return raise "There are no docking spaces available" if @bikes.length == @capacity
    @bikes << bike
    "bike is docked"
  end

end
