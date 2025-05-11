//
//  020 Valid Parentheses.swift
//  leetcode
//
//  Created by dtrognn on 11/5/25.
//

import Foundation

// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
// An input string is valid if:
//
// Open brackets must be closed by the same type of brackets.
// Open brackets must be closed in the correct order.
// Every close bracket has a corresponding open bracket of the same type.
//
//
// Example 1:
//
// Input: s = "()"
//
// Output: true
//
// Example 2:
//
// Input: s = "()[]{}"
//
// Output: true
//
// Example 3:
//
// Input: s = "(]"
//
// Output: false
//
// Example 4:
//
// Input: s = "([])"
//
// Output: true
//
//
//
// Constraints:
//
// 1 <= s.length <= 104
// s consists of parentheses only '()[]{}'.

class ValidParenthesesSolution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        let pairs: [Character: Character] = [
            ")": "(",
            "]": "[",
            "}": "{"
        ]

        for char in s {
            if char == Character("(") || char == Character("[") || char == Character("{") {
                stack.append(char)
            } else if let expectOpen = pairs[char] {
                if stack.isEmpty || stack.removeLast() != expectOpen {
                    return false
                }
            }
        }

        return stack.isEmpty
    }

    func test() {
        print("() isValid \(isValid("()"))")
        print("()[]{} isValid \(isValid("()[]{}"))")
        print("(] isValid \(isValid("(]"))")
    }
}
