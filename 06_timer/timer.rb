class Timer
  
  def initialize
    @seconds
  end

  def seconds
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    @seconds = @seconds
    Time.at(@seconds).utc.strftime("%H:%M:%S")
  end

end
