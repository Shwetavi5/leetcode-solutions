#https://leetcode.com/problems/longest-repeating-character-replacement/description/


class Solution:
    def characterReplacement(self, s: str, k: int) -> int:
        left = 0
        count = {}
        max_len = 0
        

        for right in range(len(s)):
            count[s[right]]  = 1+ count.get(s[right], 0)

            while (right-left+1) - max(count.values()) > k:

                
                count[s[left]] -= 1
                left = left +1
                
            max_len = max(max_len, right-left+1)
        return max_len

