class DockingStation

  attr_reader :stored

  @stored = []

  def release_bike
    Bike.new
  end

  def dock(bike)
    @stored = bike
  end

  def check_storage
    @stored
  end

  def no_bikes
    raise "There are no bikes" if @stored == nil
  end
  
end
