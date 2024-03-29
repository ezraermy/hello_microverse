const containNearbyDuplicate = (nums, k) => {
  const numIndices = {}
  for (let i = 0; i < i < nums.length; i++){
    # go through each element of nums
    let num = numIndices[i];
    if (num in numIndices && i - numIndices[num] <= k){
      return true 
    }
    num = numIndices[i]
  }
  return false 
}
