def bubble_sort(arr)
  loop do
    swap = false
    arr.each_with_index do |_curr_val, index|
      next if index >= arr.length - 1

      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        swap = true
      end
    end

    break unless swap
  end

  pp arr
end
