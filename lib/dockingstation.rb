class DockingStation

  attr_reader :stored

  def initialize
    @stored = []
  end

  def release_bike
    if empty?
        raise "There are no bikes"
    else
      Bike.new
    end
  end

  def dock(bike)
    if full?
      raise "Storage is full"
    else
      @stored << bike
    end
  end

  def check_storage
    @stored[-1]
  end

  private

  def full?
    if @stored.count >= 20
      true
    else
      false
    end
  end

  def empty?
    @stored.empty?
  end

end
