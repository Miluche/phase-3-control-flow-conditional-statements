=begin
  Write a method `admin_login` that takes two arguments, a username and a
  password. If the username is "admin" or "ADMIN" and the password is "12345",
  return "Access granted". Otherwise, return "Access denied".
=end
def admin_login(username, password)
  # your code here
  if (username === "admin" || username === "ADMIN") && password === "12345"
    return "Access granted"
  else
    return "Access denied"
  end
end

=begin
  Write a method `hows_the_weather` that takes in one argument, a temperature.
  If the temperature is below 40, return "It's brisk out there!". If the temperature is
  between 40 and 65, return "It's a little chilly out there!". If the temperature is above 85,
  return "It's too dang hot out there!". Otherwise, return "It's perfect out there!"
=end
def hows_the_weather(temperature)
  # your code here
  response = ""
  if temperature < 40 
    response = "brisk";
  elsif temperature >= 40 && temperature <= 65
    response = "a little chilly";
  elsif temperature > 85 
    response = "too dang hot";
  else
    response = "perfect";
  end
  return "It's " + response + " out there!"
end

=begin
  A method `fizzbuzz` takes in a number. For multiples of three, return
  "Fizz" instead of the number. For the multiples of five, return "Buzz". For
  numbers which are multiples of both three and five, return "FizzBuzz". For
  all other numbers, just return the number itself.
=end
def fizzbuzz(num)
  # your code here
  if num % 3 == 0 && num % 5 == 0
    return "FizzBuzz"
  elsif num % 3 == 0
    return "Fizz"
  elsif num % 5 == 0
    return "Buzz"
  else
    return num
  end
end

=begin
  A method `calculator` that takes three arguments: an operation and two
  numbers. If the operation is one of the following: `+`, `-`, `*`, or `\`,
  return the value of calling the operation on the two numbers. Otherwise,
  output a message saying "Invalid operation!" and return `nil`.
=end
def calculator(operation, num1, num2)
  # your code here
  case operation
  when "+"
    return num1 + num2
  when "-"
    return num1 - num2
  when "*"
    return num1 * num2
  when "/"
    return num1 / num2
  else
    puts "Invalid operation!"
  end
end



puts admin_login("admin", "12345")
puts hows_the_weather(40)

puts fizzbuzz(3)
puts fizzbuzz(5)
puts fizzbuzz(15)

puts calculator("+", 120 , 20)
puts calculator("-", 120 , 20)
puts calculator("*", 120 , 20)
puts calculator("/", 120 , 20)
puts calculator("-+", 120 , 20)

