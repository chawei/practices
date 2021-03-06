# Happy Number

# definition - http://en.wikipedia.org/wiki/Happy_number
#
# example of happy number
#
#   19 | 1^2 + 9^2       | 82
#   82 | 8^2 + 2^2       | 68
#   68 | 6^2 + 8^2       | 100
#  100 | 1^2 + 0^2 + 0^2 | 1

# example of non-happy number
#
#   4 | 4^2             | 16
#  16 | 1^2 + 6^2       | 37
#  37 | 3^2 + 7^2       | 58
#  58 | 5^2 + 8^2       | 89
#  89 | 8^2 + 9^2       | 145
# 145 | 1^2 + 4^2 + 5^2 | 42
#  42 | 4^2 + 2^2       | 20
#  20 | 2^2 + 0^2       | 4

def is_happy_number?(num)
  history = {}

  while history[num].nil? && num != 1
    history[num] = true
    num          = calc_num(num)
  end
  
  num == 1 ? true : false
end

def calc_num(num)
  num.to_s.split(//).collect { |d| d.to_i ** 2 }.inject(0) { |x, y| x + y }
end

p "is 16 happy number? #{is_happy_number?(16)}"    # no
p "is 4 happy number? #{is_happy_number?(4)}"      # no
p "is 100 happy number? #{is_happy_number?(100)}"  # yes
