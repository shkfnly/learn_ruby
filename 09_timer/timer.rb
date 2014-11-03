class Timer
  attr_accessor :seconds, :mins, :hours
  def seconds
    @seconds = 0
  end

  def time_string
    @secs = @seconds % 60
    @mins = @seconds / 60
    @hours = @seconds / 3600
    if mins > 59
      @mins = @mins % 60
    end
    @secs < 10 ? (@secs = '0' + @secs.to_s) : (@secs.to_s)
    @mins < 10 ? (@mins = '0' + @mins.to_s) : (@mins.to_s)
    @hours < 10 ? (@hours = '0' + @hours.to_s) : (@hours.to_s)

    return @hours +':'+ @mins +':'+ @secs.to_s
  end

end