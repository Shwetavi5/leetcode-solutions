#https://leetcode.com/problems/valid-palindrome/description/

class Solution:
    def isPalindrome(self, s: str) -> bool:
        left = 0
        right = len(s)-1
        while left < right:
            if not s[left].isalnum():
                left = left +1
            elif not s[right].isalnum():
                right = right -1
            elif s[left].lower() != s[right].lower():
                return False
            else:
                left = left +1
                right = right -1
        return True
