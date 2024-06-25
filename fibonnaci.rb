def fibonnaci_iterative(n)
  values = [0, 1]
  case 
  when n <= 0
      nil
  when n == 1
      values[0]
  when n == 2
      values
  else
      (n - 2).times do
          sum = values[-1] + values[-2]
          values << sum
      end
  end

  values
end

def fibonnaci_recursive(n)
  return [0] if n == 0
  return [0, 1] if n == 1

  arr = fibonnaci_recursive(n - 1)
  arr << arr[-1] + arr[-2]
end

p fibonnaci_recursive(8)
