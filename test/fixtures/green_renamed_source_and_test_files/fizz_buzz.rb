def fizz_buzz(n)
  return 'FizzBuzz' if (n % 15).zero?
  return 'Fizz' if (n % 3).zero?
  return 'Buzz' if (n % 5).zero?
  n.to_s
end
