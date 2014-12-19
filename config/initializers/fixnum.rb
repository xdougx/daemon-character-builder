class Fixnum
  def modifier
    if self >= 1 and self <= 2     
      -3
    elsif self >= 3 and self <= 4  
      -2
    elsif self >= 5 and self <= 8  
      -1
    elsif self >= 9 and self <= 14 
      0
    elsif self >= 15 and self <= 16
      1
    elsif self >= 17 and self <= 18
      2
    elsif self >= 19 and self <= 20
      3
    elsif self >= 21 and self <= 22
      4
    elsif self >= 23 and self <= 24
      5
    elsif self >= 25 and self <= 26
      6
    elsif self >= 27 and self <= 28
      7
    elsif self >= 29 and self <= 30
      8
    else
      0
    end
  end

  def testing
    ap self
  end
end