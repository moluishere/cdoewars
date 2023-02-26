# def is_asc_order(arr)
#   arr.sort == arr
#   # arr.sort.eql?(arr)
# end

def is_asc_order(arr)
  arr.each_cons(2).all? {|a, b| a <= b}
end

puts is_asc_order([1,2,4,7,19])
puts is_asc_order([1,6,10,18,2,4,20])
