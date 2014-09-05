# Convert multiple user inputs to one mathematical operator
def convert(f)
    if (f == "addition" || f == "+")
      "+"
    elsif (f == "subtraction" || f == "-")
      "-"
    elsif (f == "division" || f == "/")
      "/"
    elsif (f == "multiplication" || f == "*")
      "*"
    elsif (f == "exponentiate" || f == "**")
      "**"
    elsif (f == "square root" || f == "sqrt" || f == "√")
      "√"
    else
      false
    end
end


#Using the converted operator, perform intended operation
def calculate(f, a, b)
  if f == "+"
    add(a, b)
  elsif f == "-"
    subtract(a, b)
  elsif f == "/"
    divide(a, b)
  elsif f == "*"
    multiply(a, b)
  elsif f == "**"
    exponentiate(a, b)
  elsif f == "√"
    sqrt
  else
    nil
  end
end

# Define what the operations do
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def division(a, b)
  a / b
end

def multiplication(a, b)
  a*b
end

def exponentiate(a, b)
  a**b
end

def sqrt(a)
  Math.sqrt(a)
end

# Convert "nil" to "0"
def number(a, b)
  if a == nil
    "0"
  elsif b == nil
    "0"
  else
    puts ""
  end
end


# Greet user and give instructions
def intro()
  puts "Hello there!"
  puts "What kind of maths would you like to do?"
end

# Create a loop that will ask a question until correct input is received
def ask_again(n)
  while convert(f) == false
    "Please enter an operation"
  end
end

def get_operations()
  puts "Your options are addition, subtraction, multiplication, exponentiation, "
  puts "and taking the square root of a single number."
  operation = gets.chomp.downcase
end

ask_again(intro)
intro
get_operations()

operation = gets.chomp.downcase

# Tell ruby to convert the user input and then store it in the expression variable
operator = convert(input)

# Put that user input into a string
puts "Okay, so you want to do #{operation}, that's great!"

# Ask user for first number
puts "What's your first number?"
num1 = gets.chomp.to_i

# Ask user for second number
puts "What is your second number?"
num2 = gets.chomp.to_i

# Take the expression
answer = calculate(operator, num1, num2)
answer = "The answer is"

#print out formula, not result
puts "Ok, #{num1} #{operator} #{num2} is #{answer}."
