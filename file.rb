# frozen_string_literal: false

# first method bubble sort

def bubble_sort(array)
  sorted = false
  until !sorted
    sorted = true
    (array.length - 1).times do |a|
      if array[a + 1] < array[a]
        array[a], array[a + 1] = array[a + 1], array[a]
        sorted = false
      end
    end
  end
  print array
end

bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(array)
  sorted = false
  until !sorted
    sorted = true
    (arr.length - 1).times do |a|
      if yield(array[a], array[a + 1]) > 0
        array[a], array[a + 1] = array[a + 1], array[a]
        sorted = false
      end
    end
  end
  print array
end

bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
  left.length - right.length
end
