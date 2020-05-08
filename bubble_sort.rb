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

def bubble_sort_by(arr)
  loop do
    swap = false
    arr.each_with_index do |_curr_val, index|
      next if index >= arr.length - 1

      if yield(arr[index], arr[index + 1]).positive?
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        swap = true
      end
    end

    break unless swap
  end

  pp arr
end

bubble_sort_by(arr) do |left, right|
  left.length - right.length
end
