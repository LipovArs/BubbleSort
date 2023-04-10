# frozen_string_literal: true

class Sort
  arr = [4,7,53,8,1,3,4,9,10,12]
  loop until arr.each_cons(2).with_index.none?{|(x,y),i| arr[i],arr[i+1] = y,x if x > y}
  p arr

  def bubble_sort(arr)
    return arr if arr.size <= 1
    swapped = true
    while swapped do
      swapped = false
      0.upto(arr.size-2) do |i|
        if arr[i] > arr[i+1]
          arr[i], arr[i+1] = arr[i+1], arr[i]
          swapped = true
        end
      end
    end

    arr
  end
end
