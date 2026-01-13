from typing import List
from collections import defaultdict
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        anagram_group = defaultdict(list)
        result = []
        for s in strs:
            sort_s = tuple(sorted(s))
            # if sort_s not in anagram_group :
            # anagram_group[sort_s] = []
            anagram_group[sort_s].append(s)
        for value in anagram_group.values():
            result.append(value)
        return result




