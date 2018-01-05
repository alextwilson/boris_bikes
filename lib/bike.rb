class Bike

  def initialize
    @condition = 'working'
  end

  def working?
    if @condition == 'working'
      true
    else
      false
    end
  end

  def set_condition(condition)
    @condition = condition 
  end
end
