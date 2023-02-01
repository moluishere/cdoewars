def sequence_sum(begin_number, end_number, step)
  return 0 if begin_number > end_number
  (begin_number..end_number).step(step).reduce(0, :+)
end

puts sequence_sum(1,5,1)
