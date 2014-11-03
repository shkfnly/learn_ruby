def ftoc(temp)
  floating = temp / 1.0
  return (floating - 32) * (5.0/9.0)
end

def ctof(temp)
  floating = temp / 1.0
  return floating * (9.0/5.0) + 32
end