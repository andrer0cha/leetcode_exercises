# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.
 

# Example 1:
# Input: s = "()"
# Output: true

# Example 2:
# Input: s = "()[]{}"
# Output: true

# Example 3:
# Input: s = "(]"
# Output: false

# Constraints:
# 1 <= s.length <= 104
# s consists of parentheses only '()[]{}'.

def is_valid(s)
  return true if s == ''

  opened_brackets = []
  char_map = {
    '{' => '}',
    '[' => ']',
    '(' => ')'
  }

  s.chars.each do |c|
    if char_map.keys.include?(c)
      opened_brackets << c
    else
      return false if char_map[opened_brackets.pop] != c
    end
  end

  return true if opened_brackets == []

  return false
end
