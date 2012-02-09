str    = "foobar foo bazbarfoo"
substr = "foo"

def find_substring(str, substr)
  str_arr    = str.split(//)
  substr_arr = substr.split(//)
  results    = []
  
  str_arr.each_index do |i|
    break if i > (str.size - substr.size)
    
    is_matched = true
    
    substr_arr.each_index do |j|
      if str_arr[i+j] != substr_arr[j]
        is_matched = false
        break
      end
    end
    
    results << i if is_matched == true
  end
  
  results
end