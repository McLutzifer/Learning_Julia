function f(n::INT)
  if n<2
    return false
  end
  for i in 2:n-1
    if mod(n, i) == 0
      reurn false
    end
  end
  return true
end


f(9)
