# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr_sum = 0

  i = 0
  while i < arr.size
    arr_sum = arr_sum + arr[i]
    i = i + 1
  end

  return arr_sum
end

def max_2_sum arr

  max_1 = nil
  max_2 = nil

  i = 0
  while i < arr.size
    if max_1 == nil
      max_1 = arr[i]
    elsif max_2 == nil
      max_2 = arr[i]
    elsif arr[i] > max_1
      max_1 = arr[i]
    elsif arr[i] > max_2
      max_2 = arr[i]
    end
    i = i + 1
  end

  if max_1 == nil
    arr_sum = 0
  elsif max_2 == nil
    arr_sum = max_1
  else
    arr_sum = max_1 + max_2
  end

  return arr_sum
end

def sum_to_n? arr, n
  sum_to_n = false # Initializes the return variable to false.

  i = 0 # First iterator initialized to 0.
  j = 0 # Second iterator initialzied to 0.
  while i < arr.size - 1 # Doesn't need to go to the last index of arr because every possible combination involving that index will have already been tested.
    j = 0
    while j < arr.size
      if arr[i] + arr[j] == n && i != j # Checks if two different indexs added together equals n.
        sum_to_n = true
      end
      j = j + 1
    end
    i = i + 1
  end

  return sum_to_n
end

# Part 2

def hello(name)
  return "Hello, " + name 
end

def starts_with_consonant? s
  starts_with_consonant = true # Initializes return value to true.
  
  if /^[^aeiou\W]/i.match(s) == nil # Checks if the initial character of s is a vowel.
    starts_with_consonant = false
  end

  return starts_with_consonant
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # Sorry, don't have time for this one.
end

# Part 3

class BookInStock
  def initialize (isbn, price) # Constructor
    if isbn == '' || price <= 0 # If the ISBN or price are invalid, throw an error.
      raise ArgumentError
    end

    @isbn = isbn # Set initial ISBN.
    @price = price # Set initial price.
  end

  def isbn () # ISBN getter.
    return @isbn
  end

  def price () # Price getter.
    return @price
  end

  def isbn= (isbn) # ISBN setter.
    @isbn = isbn
  end

  def price= (price) # Price setter.
    @price = price
  end

  def price_as_string 
    result = sprintf('%.2f', @price) # Create a string of the form ##.##
    return "$" + result # Add a $ to the front of the previous string.
  end
end
