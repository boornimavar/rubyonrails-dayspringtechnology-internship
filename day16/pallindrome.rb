#to check palindrome
def palindrome?(str)
  left = 0
  right = str.length - 1

  while left < right
    return false if str[left] != str[right]
    left += 1
    right -= 1
  end

  true
end

puts palindrome?("madam")  
puts palindrome?("ruby")   
