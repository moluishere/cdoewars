# DESCRIPTION:
# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.
#
# Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:
#
# []                                -->  "no one likes this"
# ["Peter"]                         -->  "Peter likes this"
# ["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
# ["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
# ["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"
# Note: For 4 or more names, the number in "and 2 others" simply increases.

# def likes(names)
#   case names.size
#     when 0 then "no one likes this"
#     when 1 then"#{names[0]} likes this"
#     when 2 then "#{names[0]} and #{names[1]} like this"
#     when 3 then "#{names[0]}, #{names[1]} and #{names[2]} like this"
#     else"#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
#   end
# end
#
def likes(names)
  who(names) + ' ' +like_this(names)
end

def who(names)
  case names.size
    when 0 then "no one"
    when 1 then "#{names[0]}"
    when 2 then "#{names[0]} and #{names[1]}"
    when 3 then "#{names[0]}, #{names[1]} and #{names[2]}"
    else "#{names[0]}, #{names[1]} and #{names.size - 2} others"
  end
end

def like_this(names)
  names.size <= 1 ? "likes this" : "like this"
end

puts likes([])
puts likes(["Peter"] )
puts likes(["Jacob", "Alex"])
puts likes(["Alex", "Jacob", "Mark"] )
puts likes(["Alex", "Jacob", "Mark", "Max"])
