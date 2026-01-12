
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:

        # key1 = Counter(s)

        # key2 = Counter(t)
        # if key1 == key2:
        # return True
        # else:
        # return  False
        if len(s) != len(t):
            return False

        counter = {}
        for char in s:
            counter[char] = counter.get(char, 0) + 1
        for char in t:
            if char not in counter or counter[char] == 0:
                return False
            counter[char] -= 1
        return True








