#write your code here

def add(a, b)

    a + b

end 

def subtract(a, b)

    a - b

end 

def sum(array)

    total = 0
    array.each do |i|
      total += i
    end 
    total 

end

def multiply(*args)

  total = 1
  args.each { |n| total = total * n }
  total

end

def power(number, power)

  result = 1
  for counter in 1..power
    result = result * number
  end 
  
  result 
  
end 


def factorial(n)

  # test returns nil if n is less than 0
  return 0 if n <= 0    

  # while loop will keep running as long as n > 0
  # total variable that stores the final product
  
  total = 1

  while n > 0
      total *= n
      n -= 1
  end 

  total
  
end