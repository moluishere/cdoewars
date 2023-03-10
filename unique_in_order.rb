# DESCRIPTION:
# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.
#
# For example:
#
# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]

def unique_in_order(iterable)
  items = (iterable.is_a?(String) ? iterable.split('') : iterable)
  unique = []
  items.each_with_index do |item, index|
    unique << item if index == 0 || item != items[index-1]
  end
  unique
end

puts unique_in_order('AAAABBBCCDAABBB')
puts unique_in_order('ABBCcAD')
puts unique_in_order([1,2,2,3,3])
