def bubble_sort_by(array)
  n = array.length - 2
  loop do
    swapped = false
    (0..n).each do |index|
      comparator = block_given? ? yield(array[index], array[index + 1]) > 0 : array[index] > array[index + 1]
      if comparator
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped = true
      end
    end
    n -= 1
    break unless swapped
  end
  array
end
