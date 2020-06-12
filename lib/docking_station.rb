require_relative  'bike'

class DockingStation
  attr_reader :docked_bikes, :capacity

  def initialize
    @docked_bikes = []
    @capacity = 20
  end

  def release_bike
    if @docked_bikes == []
      raise "no bike available"
    else
      @docked_bikes.pop
    end
  end

  def dock_bike(bike)
    return raise "There are no docking spaces available" if @docked_bikes.length == @capacity
    @docked_bikes << bike
    p "bike #{@docked_bikes.length} is docked out of #{@capacity}"
  end

end
