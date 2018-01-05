class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :stored, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @stored = []
    @capacity = capacity
  end

  def release_bike
    if empty?
        raise "There are no bikes"
    else
      Bike.new
    end
  end

  def dock(bike, condition = 'working')
    if full?
      raise "Storage is full"
    else
      bike.set_condition(condition) 
      @stored << bike
    end
  end

  def check_storage
    @stored[-1]
  end

  private

  def full?
    if @stored.count >= DEFAULT_CAPACITY
      true
    else
      false
    end
  end

  def empty?
    @stored.empty?
  end

end
