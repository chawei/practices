
def is_palindrome?(str)
  str == str.reverse
end

def naive_palindrome(str)
  longest = ""
  str_arr = str.split(//)
  str_len = str_arr.size
  str_arr.each_index do |i|
    (i..(str_len-1)).each do |j|
      test_str = str_arr[i..j].join()
      if longest.size < test_str.size && is_palindrome?(test_str)
        longest = test_str
      end
    end
  end

  return longest
end
