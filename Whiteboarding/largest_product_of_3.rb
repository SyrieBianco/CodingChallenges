def largest_product_of_3(arr)
  min, max = arr.min, arr.max
  largest_3, smallest_2 = Array.new(3, min), Array.new(2, max)

  arr.each do |el|
    if el > largest_3[0]
      largest_3 = [el] + largest_3[0..1]
    elsif el > largest_3[1]
      largest_3 = [largest_3[0], el, largest_3[1]]
    elsif el > largest_3[2]
      largest_3[2] = el
    end

    if smallest_2.length < 2 || el < smallest_2[0]
      smallest_2 = [el] + smallest_2[0...1]
    elsif el < smallest_2[1]
      smallest_2[1] = el
    end
  end
  
  [largest_3.reduce(:*), largest_3[0] * smallest_2.reduce(:*)].max
end


p largest_product_of_3([6, 2, 3, 4, 5, 6])
p largest_product_of_3([-5, -2, -3, -4, -5, -6])
p largest_product_of_3([6, -12, 3, -44, 5, 6])
p largest_product_of_3([6, -2, -3, 4, 5, 6])
p largest_product_of_3([6, 2, -3, 4, 5, 6])
