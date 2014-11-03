def measure(arg=nil)
  if arg == nil
    start = Time.now
    yield
    Time.now - start
  else
    start = Time.now
    for num in (1..arg)
      yield
    end
    (Time.now - start) / arg
  end
end