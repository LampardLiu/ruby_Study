def foreach
  i = 0
  loop do
    break  if i > 10 
    puts i
    redo unless i < 8
    i+=1
  end
end

foreach