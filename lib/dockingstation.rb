class DockingStation

  attr_reader :stored

  def initialize
    @stored = []
  end

  def release_bike
    if @stored.count < 1
        raise "There are no bikes"
    else
      Bike.new
    end
  end

  def dock(bike)
    if @stored.count > 19
      raise "Storage is full"
    else
      @stored << bike
    end
  end

  def check_storage
    @stored[-1]
  end

end
