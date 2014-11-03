filename = ARGV.first

target = open(filename, 'r')

a = [] 
for i in (0..19)
  a[i] = []
end

j = 0

target.each_line do |line|
  a[j] = line.split(' ')
  j += 1
end

maxprod = 0

for i in (0..19)
  for j in (0..19)
    a[i][j] = a[i][j].to_i
  end
end
print a
ival = 0
jval = 0
for i in (0..19)
  for j in (0..16)
     
     if (a[i][j] * a[i][j + 1] * a[i][j + 2] * a[i][j + 3]) > maxprod
       maxprod = a[i][j] * a[i][j + 1] * a[i][j + 2] * a[i][j + 3]
       ival = i
       jval = j
     end
   unless i + 3 > 19
     if (a[i][j] * a[i + 1][j] * a[i + 2][j] * a[i + 3][j]) > maxprod
       maxprod = a[i][j] * a[i + 1][j] * a[i + 2][j] * a[i + 3][j]
      ival = i
       jval = j
     end
   end
   unless i + 3 > 19 || j + 3 > 19
     if (a[i][j] * a[i + 1][j + 1] * a[i + 2][j + 2] * a[i + 3][j + 3]) > maxprod
       maxprod = a[i][j] * a[i + 1][j + 1] * a[i + 2][j + 2] * a[i + 3][j + 3]
     end
   end

  end
  puts maxprod
end

for i in (3..19)
  for j in (0..16)
    if(a[i][j] * a[i-1][j+1] * a[i-2][j+2] * a[i-3][j+3]) > maxprod
      maxprod = a[i][j] * a[i-1][j+1] * a[i-2][j+2] * a[i-3][j+3]
      ival = i
      jval = j
    end
  end
end
puts maxprod
puts ival
puts jval
