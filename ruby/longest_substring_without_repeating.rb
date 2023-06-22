# 3. Longest Substring Without Repeating Characters
# Given a string s, find the length of the longest substring without repeating characters.
 
# Example 1:
# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.

# Example 2:
# Input: s = "bbbbb"
# Output: 1
# Explanation: The answer is "b", with the length of 1.

# Example 3:
# Input: s = "pwwkew"
# Output: 3
# Explanation: The answer is "wke", with the length of 3.
# Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
# 

# Constraints:
# 0 <= s.length <= 5 * 104
# s consists of English letters, digits, symbols and spaces.
# @param {String} s
# @return {Integer}

# Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?

# "aasdfffasdaasdaas1312233asdasdfghjkl;"
#
# #1
# unique_substrings = {
#  0: "a",
# }
# index = 0
#
# #2
# unique_substrings = {
#  0: "a",
#  1: "a"
# }
# index = 1

# #3
# unique_substrings = {
#  0: "a",
#  2: "as"
# }
# index = 2

# #3
# unique_substrings = {
#  0: "a",
#  2: "as"
# }
# index = 2

def length_of_longest_substring(s)
  return 0 if s == ""
  current_substring = ""
  max_size = 0

  s.chars.each do |char| 
    if current_substring.include?(char)
      current_substring = current_substring[(current_substring.index(char)+1)..] + char
    else
      current_substring += char
    end
    max_size = [current_substring.size,max_size].max
  end
  max_size
end
