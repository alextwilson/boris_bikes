class DockingStation

  attr_reader :stored

  @stored = []

  def release_bike
    if @stored == nil
        raise "There are no bikes"
    else
      Bike.new
    end
  end

  def dock(bike)
    if @stored != nil
      raise "Storage is full"
    else
      @stored = bike
    end
  end

  def check_storage
    @stored
  end

end
