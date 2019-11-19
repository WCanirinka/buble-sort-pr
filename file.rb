# first method

def bubble_sort(arr)
  return arr.sort!
end

# second method

def bubble_sort_by(arr)
  return arr.sort! { |x, y|
           x.length - y.length
         }
end
