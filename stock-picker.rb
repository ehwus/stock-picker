# find difference of each valid choices
# valid means share bought before sold
sample_array = [17,3,6,9,15,8,6,1,10]
return_array = []
biggest_difference = 0
buy = 0
sell = 0

# iterate through every int in array barring last
(sample_array.length - 1).times do |index1|
  (index1 + 1..sample_array.length - 1).each do |index2|
    profit = sample_array[index2] - sample_array[index1]
    if profit > biggest_difference
      biggest_difference = profit
      buy = index1
      sell = index2
    end
  end
end

return_array.push(buy)
return_array.push(sell)
p return_array