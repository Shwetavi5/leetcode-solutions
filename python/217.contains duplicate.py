from typing import List
class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        maps = {}
        for i, element in enumerate(nums):
            if not element in maps:
                maps[element] = i

            else:
                return True
        return False