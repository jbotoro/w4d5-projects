def my_min1(array)
  new_arr = []
  array.each_with_index do |el, idx|
    array.each_with_index do |el1, idx1|
      if idx != idx1 && el < el1
        new_arr << el
      else
        new_arr << el1
      end
    end
  end
  new_arr.min
end


def my_min2(array)
  lowest_number = false

  array.each do |el|
    if !lowest_number || el < lowest_number
      lowest_number = el
    end
  end
  lowest_number
end



list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min1(list)  # =>  -5


def largest_contiguous_subsum1(list)

  
  
  sums = []

  (0...list.length).each do |idx|
    (idx...list.length).each do |jdx|
      curr_sub = list[idx..jdx]
      sums << curr_sub.sum
    end
  end
  sums.max
end


def largest_contiguous_subsum2(list)
  current = list.first
  largest = list.first

  return list.max if list.all? { |num| num < 0 }

  list.drop(1).each do |num|
    current = 0 if current < 0
    current += num
    largest = current if current > largest
  end





  largest
end
list = [5, 3, -7]
  p largest_contiguous_subsum2(list) # => 8