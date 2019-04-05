def bubble_sort(array)
  n = array.length - 2
  loop do
    swapped = false
    (0..n).each do |index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped = true
      end
    end
    n -= 1
    break if !swapped
  end
  return array
end
