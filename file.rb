# frozen_string_literal: false

# first method bubble sort

def bubble_sort(array)
  sorted = true
  while sorted
    sorted = false
    (array.length - 1).times do |a|
      if array[a + 1] < array[a]
        array[a], array[a + 1] = array[a + 1], array[a]
        sorted = true
      end
    end
  end
  print array
end

# bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(array)
  sorted = true
  while sorted
    sorted = false
    (arr.length - 1).times do |a|
      if yield(array[a], array[a + 1]).positive?
        array[a], array[a + 1] = array[a + 1], array[a]
        sorted = true
      end
    end
  end
  print array
end

# bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
#  left.length - right.length
# end
