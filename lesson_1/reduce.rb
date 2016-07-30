def reduce(arr, default=0)

  acc = default
  counter = 0
  while counter < arr.length do
    acc = yield(acc, arr[counter])
    counter += 1
  end
  acc
end


array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }
p reduce(array, 10) { |acc, num| acc + num }
p reduce(array) { |acc, num| acc - num }
p reduce(array) { |acc, num| acc + num if num.odd? }