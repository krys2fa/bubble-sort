test_array = [8, 6, 1, 4, 9, 7]
test_array1 = [7,8,4, 7,3,8, 6, 1, 4, 9, 7]
test_arr = [1, 3, 4, 4, 6, 7, 7, 7, 8, 8, 9]

def bubble_sort(arr)

  loop do
    swap = false
    arr.each_with_index do |curr_val, index|
      next if index >= arr.length-1
      if arr[index] > arr[index+1]
        arr[index], arr[index+1] = arr[index+1], arr[index]
        swap = true
      end
    end

    break if !swap

  end

  pp arr
end

bubble_sort(test_arr)
