# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.empty? ? 0 : arr.inject(:+) 
=begin
  return 0 if arr.empty?
  arr.inject(:+)  
=end
end

def max_2_sum arr
  (arr.length == 1) ? (arr[0]) : sum(arr.max(2))
=begin  
  return 0 if arr.empty?
  return arr[0] if arr.length < 2
  arr.sort!
  arr2 = arr.slice(-2, 2) #.max(2) to get 2 highest nums
  sum arr2
=end
end

def sum_to_n?(arr, n)
  return false if arr.empty? or arr.length < 2
  sum_hash = {} 
  arr.each do |val|
    return true if sum_hash.has_key?(val)
    sum_hash[n-val] = val
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s[0] =~ /[b-df-hj-np-tv-z]/i 
end

def binary_multiple_of_4? (s)
  return true if s == '0'
  s =~ /^[10]*00$/
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn, :price #makes get/setters automatically
  
  def price_as_string
    "$%.2f" % @price 
  end
end