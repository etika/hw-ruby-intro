# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0){|sum,x| sum + x }
end

def max_2_sum arr
  length, sorted_arr = arr.length , arr.sort
  length > 1 ? sorted_arr[-1]+sorted_arr[-2] : arr.empty? ? 0 : arr[0]
end

def sum_to_n? arr, n
  return false if arr.empty? && n.zero?
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2
def hello(name)
  "Hello, ".concat(name)
end

def starts_with_consonant? s
    s =~ /\A[^aeiou\W]/i ? true : false
end

def binary_multiple_of_4? s
   number=  !s.empty? ? (s.chars.all? {|x| x =~ /[01]/} ? s.to_i(2) : "false") : 5
   number%4==0 ?   true :  false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn , price)
    self.isbn= isbn
    self.price= price
   if  isbn.empty? || price <=0
    raise ArgumentError.new
  end
end

def price_as_string
  "$"+  "%0.2f" % self.price.round(2).to_s
end
