from typing import List

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        # for i in range(len(nums)):
        # for j in range (i+1, len(nums)):
        # if nums[i] + nums[j] == target:
        # return [i, j]
        # Create an empty hash map, if reminder value  exist in the map return indexes if not add the value and its index in the map
        h = {}
        for i, element in enumerate(nums):
            reminder = target - element
            if reminder in h:
                return [i, h[reminder]]
            h[element] = i



