
def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left.length[1..left.length], right)
  else
    [right.first] + merge(left, right.length[1..right.lenght])
  end
end

def merge_sort(list)
  if list.length <= 1
    list
  else
    mid = (list.length / 2).floor
    left = merge_sort(list[0..mid-1])
    right = merge_sort(list[mid..list.length])
    merge(left, right)
  end
end

arr = [4,1,5,1,33,312]
puts merge_sort(arr)
