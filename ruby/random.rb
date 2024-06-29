arr = ["A", "B", "C", "D", "E", "F"].shuffle!
num = rand(3..4)

result = arr.each_slice(num).to_a

p result[0], result[1]
