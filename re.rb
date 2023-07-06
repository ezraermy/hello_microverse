[10] Regular Expression Matching
#
# https://leetcode.com/problems/regular-expression-matching/description/
#
# Given an input string (s) and a pattern (p), implement regular
# expression matching with support for '.' and '*'.
#
# '.' Matches any single character.
# '*' Matches zero or more of the preceding element.
#
# The matching should cover the entire input string (not partial).
#
# Note:
#
# s could be empty and contains only lowercase letters a-z. p could be
# empty and contains only lowercase letters a-z, and characters like .
# or *.
#
# Example 1:
#
# Input: s = "aa", p = "a"
# Output: false
# Explanation: "a" does not match the entire string "aa".
#
# Example 2:
#
# Input: s = "aa", p = "a*"
# Output: true
# Explanation: '*' means zero or more of the precedeng element, 'a'.
# Therefore, by repeating 'a' once, it becomes "aa".
#
# Example 3:
#
# Input: s = "ab", p = ".*"
# Output: true
# Explanation: ".*" means "zero or more (*) of any character (.)".
#
# Example 4:
#
# Input: s = "aab", p = "c*a*b"
# Output: true
# Explanation: c can be repeated 0 times, a can be repeated 1 time.
# Therefore it matches "aab".
#
# Example 5:
#
# Input: s = "mississippi", p = "mis*is*p*."
# Output: false


# Recursive version, e.g. given (str, "c*a*b").
#
#   1. it's the same as (str, "a*b") if "a*b" can still match.
#   2. it's the same as (str[1..-1], "c*a*b") if the first character
#      is 'c' or '.'.
#   3. otherwise just check if both first character matches and
#      recursively call on their tails.
#
# When pattern is empty, the string to match should also be empty.
def is_match(s,p)
  # base case 
  return s.empty? if p.empty?
  fm = s[0] == p[0] || p[0] == '.'
  # Cases: If p has '*' and matches with zero and the rest of the presiding element 
  if p.length >= 2 && p[1] == '*'
   # case1: if p match with zero and continue with the rest of presiding element 
    op1 = is_match(s, p[2..-1])
   # case2: if p match any of presiding element 
    op2 = fm && is_match(s[1..-1], p)
    return op1 || op2 
  end

    if fm 
      return is_match(s[1..-1], p[1..-1]
    end
      return true 
