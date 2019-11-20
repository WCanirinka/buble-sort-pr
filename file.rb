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
  return array
end

def bubble_sort_by(array)
  sorted = true
  while sorted
    sorted = false
    (array.length - 1).times do |a|
      if yield(array[a], array[a + 1]).positive?
        array[a], array[a + 1] = array[a + 1], array[a]
        sorted = true
      end
    end
  end
  return array
end
