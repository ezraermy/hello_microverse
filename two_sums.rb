#The two_sum function takes an array of integer nums and an integer target as input. 

def two_sum(nums, target)
  num_map = {}
  #It iterates through the array, calculating the complement (the value needed to reach the target) 
  #for each element. If the complement exists in the hash map, 
  for nums.each_with_index do |num, index|
    #it means we have found the two numbers that add up to the target. 
    compliment = target - num
    if num_map.include?(compliment)
      #In that case, we return the indices of the two numbers. If no solution is found, an empty array is returned.
      return [num_map[compliment], index]
    end
    num_map[num] = index
  end
  return []
end
