//
//  009 Palindrome Number.swift
//  leetcode
//
//  Created by dtrognn on 10/5/25.
//

import Foundation

// Given an integer x, return true if x is a palindrome, and false otherwise.
//
//
//
// Example 1:
//
// Input: x = 121
// Output: true
// Explanation: 121 reads as 121 from left to right and from right to left.
// Example 2:
//
// Input: x = -121
// Output: false
// Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
// Example 3:
//
// Input: x = 10
// Output: false
// Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
//
//
// Constraints:
//
// -231 <= x <= 231 - 1
//
//
// Follow up: Could you solve it without converting the integer to a string?

class PalindromeNumberSolution {
    func isPalindrome(number: Int) -> Bool {
        if number < 0 || (number % 10 == 0 && number != 0) { return false }

        var original = number
        var reversed = 0

        while original != 0 {
            let digit = original % 10 /// lấy ra số cuối cùng
            reversed = reversed * 10 + digit
            original = original / 10 /// lấy ra số còn lại đã ignore số cuối cùng
        }

        return reversed == number
    }

    func isPalindrome(string: String) -> Bool {
        let chars = string.filter { $0.isLetter || $0.isNumber }.map(String.init)
        var left = 0
        var right = chars.count - 1

        while left < right {
            if chars[left] != chars[right] {
                return false
            }
            left += 1
            right -= 1
        }

        return true
    }

    func test() {
        print("number 12521 isPalindrome \(isPalindrome(number: 12521))")
        print("number -121 isPalindrome \(isPalindrome(number: -121))")
        print("number 10 isPalindrome \(isPalindrome(number: 10))")

        print("abcba isPalindrome \(isPalindrome(string: "abcba"))")
        print("abcb isPalindrome \(isPalindrome(string: "abcb"))")
    }
}
