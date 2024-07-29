def bubble_sort(array)
  n = array.length
  swapped = true

  while swapped
    swapped = false

    #loop until n-1
    (0...(n-1)).each do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    #reduce the range for the next pass
    n -= 1
  end
  array
end


if __FILE__ == $0

  array = ARGV[0].split(",").map(&:to_i)
  puts bubble_sort(array).inspect
end