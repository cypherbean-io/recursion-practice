def fibs(number)
  return [] if number == 0
  return [0] if number == 1

  fib_array = [0, 1]
  (number - 2).times do
    fib_array << fib_array[-1] + fib_array[-2]
  end

  fib_array
end