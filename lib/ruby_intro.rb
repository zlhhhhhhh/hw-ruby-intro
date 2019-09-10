# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0;
  for i in arr
    sum += i
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  max_sum = 0; 
  max1 = -Float::INFINITY;
  max2 = -Float::INFINITY;
  for i in arr
    if i >= max1
      max2 = max1
      max1 = i
    elsif i<max1 and i >= max2
      max2 = i
    end
  end
  if max1 == -Float::INFINITY and max2 ==-Float::INFINITY
    return max_sum
  elsif max2 == -Float::INFINITY
    return max1
  else
    max_sum = max1 + max2
    return max_sum  
  end 
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  hashmap = Hash.new()
  for i in arr
    if hashmap.has_key?(n-i)
      return true 
    else
      hashmap[i]= 1
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, "+name;
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /\A(?=[^aeiou])(?=[a-z])/i.match(s)
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /^[0-1]+$/.match(s)
    if /00\Z/.match(s) or s=="0"
      return true
    else
      return false
    end
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    if isbn=="" or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end 
  
  # getter
  def price 
    @price
  end
  
  def isbn
    @isbn
  end
  
  # setter
  def price=(price)
    @price = price 
  end 
  
  def isbn=(isbn)
    @isbn = isbn
  end 
  
  # price_as_string func
  def price_as_string 
    return "$" + format("%.2f",@price)
  end
end
