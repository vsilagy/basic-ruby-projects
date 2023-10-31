def bubble_sort(array)
  # The variable 'sorted' will track whether the array is sorted
  sorted = false
  # Start a `until` loop that will continue until the array is sorted
  until sorted do
    # Set `sorted` to `true`, we need to find at least one swap in order for the loop to continue
    sorted = true
    # Iterate over the array, comparing the elements
    (0...array.length - 1).each do |index|
      # If the current element is greater than the next, swap them
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]

        sorted = false
      end
    end
  end
  # Return sorted array
  array
end

print bubble_sort([4,3,78,2,0,2]) # => [0,2,2,3,4,78]
print bubble_sort([-2,42,3,11,-9]) # => [-9,-2,3,11,42]