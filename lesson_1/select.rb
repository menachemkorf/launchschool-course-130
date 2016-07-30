def select(arr)

  new_arr = []
  counter = 0

  while counter < arr.length do
    new_arr << arr[counter] if yield(arr[counter])
    counter += 1
  end
  new_arr
end

arr = [1, 2, 3, 4, 5]

p select(arr) { |num| num.odd? }
p select(arr) { |num| puts num }
p select(arr) { |num| num + 1 }
