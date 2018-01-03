# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arrSum=0
  arr.each{
    |element| arrSum=arrSum+element
  }
  return arrSum
end

def max_2_sum arr
  # YOUR CODE HERE
  max=0
  max2=0
  if arr.size>1
    arr.each{
      |value|
      if max<value or max==0
        max=value
      end
    }
    temp_index=arr.find_index(max)
    arr.delete_at(temp_index)
    arr.each{
      |value|
      if max2<value or max2==0
        max2=value
      end
    }
    temp_index2=arr.find_index(max2)
    arr.delete_at(temp_index2)
  elsif arr.size==0
    return 0
  elsif arr.size==1
    return arr.first
  end
  # arr.each{
  #   |element| 
  #   if element>=max
  #     max=element
  #     max2=max
  #   elsif element>max2
  #     max2=element
  #   end
  # }
  # arr.sort!
  # max=arr.last
  # max2=arr.last-1
  retSum = max+max2
  return retSum
end

def sum_to_n? arr, n
  if arr.size<=1
    return false
  end
  # i=0
  # arSize=arr.size
  # until i ==  arSize do
  #   firstVal=arr.first
  #   arr.each{
  #     |val,j|
      
  #     if j!=0 and n==firstVal+val
  #       puts(firstVal.to_s+' '+val.to_s)
  #       return true
  #     end
  #   }
  #   arr.shift
  #   i+=1
  # end
  
  arr.each_with_index{
    |val,i|
    arr.each_with_index{
      |val2,j|
      g=val+val2
      if n==val+val2 and i!=j
        return true
      end
    }
  }
  return false
end

# Part 2

def hello(name)
  newName = "Hello, "+ name
  return newName
end

def starts_with_consonant? s
  con=s.each_char.first
  if s.empty?
    return false
  elsif /[aeiouAEIOU]/.match(con)
    return false
  elsif /\W/.match(con)
  return false
  elsif /\A[b-df-hj-np-tv-z]/.match(con)
    return true
  elsif /[b-df-hj-np-tv-z]/.match(con )
    return true
  end
  return true
end

def binary_multiple_of_4? s
  decNum=s.to_i(10)
  if /[^0-1]/.match(s)
    return false
  elsif s.empty?
    return false
  elsif decNum%4==0
    return true
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn,:price
  
  def self.new_object(isbn,price)
    @isbn=isbn
    @price=price
  end
  
  def initialize(isbn,price)
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn=isbn
    @price=price
  end
  
  def price_as_string
  return '$'+format('%.2f',@price)
  end
end