#The two_sum function takes an array of integers nums and an integer target as input. 
#It iterates through the array, calculating the complement (the value needed to reach the target) 
#for each element. If the complement exists in the hash map, 
#it means we have found the two numbers that add up to the target. 
#In that case, we return the indices of the two numbers. If no solution is found, an empty array is returned.

def two_sum(nums, target)
  num_map = {}
  for nums.each_with_index do |num, index|
    complement = target - num
    if num_map.include?(complement)
      return [num_map[complement], index]
    end
    num_map[num] = index
  end
  return []
end
