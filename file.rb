# first method

def bubble_sort(arr)
  arr.sort!
end

# second method

def bubble_sort_by(arr)
  arr.sort! do |x, y|
    x.length - y.length
  end
end
