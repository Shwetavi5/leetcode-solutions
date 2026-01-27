#https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        left = 0
        sett = set()

        w_length = 0
        best = 0

        for right in range(len(s)):

        

            while s[right]  in sett:
                sett.remove(s[left])
                left = left +1


            sett.add(s[right])
            w_length = right - left +1
            best = max(best, w_length)

        return best

