def bubble_sort(array)
  n = array.length - 2
  begin
    swapped = false
    for index in 0..n
      if array[index]>array[index+1]
        array[index],array[index+1] = array[index+1],array[index]
        swapped = true
      end
    end
    n = n-1
  end until !swapped
  return array
end
