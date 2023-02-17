# When done, submit this entire file to the autograder

# Part 1

def sum arr
  #uses built in sum method. Shown in class.
  arr.sum
end

def max_2_sum arr
  #returns zero if no elements
  return 0 if arr.empty?
  #if only one element, return it
  if arr.length == 1 then return arr.first end

  #makes array only the largest numbers
  arr = arr.max(2)
  #returns the sum of the largest numbers
  arr.sum


end

def sum_to_n? arr, n
    #returns false if no elements
    return false if arr.empty?
    #if only one element, return flase
    if arr.length == 1 then return false end
    
      #handy method found to check specified permutations. 
      #Checks if any two elements add to given n
    arr.permutation(2).any? {|a,b| a + b == n}
end

# Part 2

def hello(name)
  #says hello using the variable name
  "Hello, #{name}"
end

def starts_with_consonant? s
  #converts all letters to upper case and compares start with consonants
  #copied a list of consonants that was in upper, so went with upcase
  s.upcase.start_with?('B', 'C', 'D', 'F', 'G', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'S', 'T', 'V', 'X', 'Z' 'H', 'R', 'W', 'Y')
end

def binary_multiple_of_4? s
  return true if s == "0"
  /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock

#makes the isbn attribute
attr_accessor :isbn
#makes the price attribute
attr_accessor :price

#constructor
def initialize(isbn, price)
  #If the isbn is invalid, reject it
  if isbn.empty? then raise ArgumentError end
  #if the price is invalid, reject it
  if price <= 0 then raise ArgumentError end
#sets isbn
@isbn = isbn
#sets price
@price = price
end #end constructor

#shows the price as a string
def price_as_string
  #returns $price with 2 decimal places
  return "$%0.2f" % [price]
end

end
