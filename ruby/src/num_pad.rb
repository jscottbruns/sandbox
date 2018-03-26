module NumPad
  def presses(input)
    groups = ["1", "0", "ABC2", "DEF3", "GHI4", "JKL5", "MNO6", "PQRS7", "TUV8", "WXYZ0"]
    input.upcase.chars.map {|i| groups.select{|x| x.index(i) }.chars }
  end
end