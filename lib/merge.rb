def merge_sort(array)
  puts 'This was printed recursively'
  # Base case: array of length 0 or 1 is already sorted
  return array if array.length <= 1

  # Find middle point
  mid = array.length / 2
  
  # Split array and recursively sort both halves
  left = merge_sort(array[0...mid])
  right = merge_sort(array[mid..-1])
  
  # Merge the sorted halves
  merge(left, right)
end

def merge(left, right)
  result = []
  
  # Compare and merge while both arrays have elements
  while !left.empty? && !right.empty?
    result << (left[0] <= right[0] ? left.shift : right.shift)
  end
  
  # Add remaining elements
  result.concat(left)
  result.concat(right)
end