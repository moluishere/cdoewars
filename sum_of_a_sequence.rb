# Jnstructions:
#
# Your task is to make function, which returns the sum of a sequence of integers.
# The sequence is defined by 3 non-negative values: begin, end, step (inclusive).
# If begin value is greater than the end, function should returns 0
#
# Examples:
# 2,2,2 --> 2
# 2,6,2 --> 12 (2 + 4 + 6)
# 1,5,1 --> 15 (1 + 2 + 3 + 4 + 5)
# 1,5,3  --> 5 (1 + 4)

def sequence_sum(begin_number, end_number, step)
  return 0 if begin_number > end_number
  (begin_number..end_number).step(step).reduce(0, :+)
end

puts sequence_sum(1,5,1)
