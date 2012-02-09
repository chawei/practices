def sqrt(num, precision = 0.01)
  upper_num = num
  lower_num = 0
  
  begin
    guess_num        = (upper_num + lower_num)/2.0
    sqr_of_guess_num = guess_num ** 2
    if sqr_of_guess_num > num
      upper_num = guess_num
    else
      lower_num = guess_num
    end
  end while (sqr_of_guess_num - num).abs > precision

  return ((1/precision) * guess_num).round * precision
end
