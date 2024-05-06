arr = ["A", "B", "C", "D", "E", "F"].shuffle!
num = rand(2)

if num == 0
  result = arr.each_slice(3).to_a
elsif num == 1
  result = arr.each_slice(4).to_a
end

p result[0], result[1]
