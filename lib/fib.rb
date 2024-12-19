def fibs(number)
  return [] if number == 0
  return [0] if number == 1

  fib_array = [0, 1]
  (number - 2).times do
    fib_array << fib_array[-1] + fib_array[-2]
  end

  fib_array
end

def fibs_rec(number)
  puts 'This was printed recursively'

  return [] if number == 0
  return [0] if number == 1
  return [0, 1] if number == 2

  sequence = fibs_rec(number - 1)
  sequence << sequence[-1] + sequence[-2]
  sequence
end