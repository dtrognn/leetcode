//
//  014 Longest Common Prefix.swift
//  leetcode
//
//  Created by dtrognn on 10/5/25.
//

import Foundation

// Write a function to find the longest common prefix string amongst an array of strings.
//
// If there is no common prefix, return an empty string "".
//
//
//
// Example 1:
//
// Input: strs = ["flower","flow","flight"]
// Output: "fl"
// Example 2:
//
// Input: strs = ["dog","racecar","car"]
// Output: ""
// Explanation: There is no common prefix among the input strings.
//
//
// Constraints:
//
// 1 <= strs.length <= 200
// 0 <= strs[i].length <= 200
// strs[i] consists of only lowercase English letters if it is non-empty.

class LongestCommonPrefixSolution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }

        let firstWord = Array(strs[0])
        var result = ""

        // Duyệt từng ký tự trong chuỗi đầu tiên (ví dụ: "flower" → f, l, o, w, e, r)
        for i in 0 ..< firstWord.count {
            let currentChar = firstWord[i]

            // So sánh ký tự đó với từng chuỗi còn lại
            for j in 1 ..< strs.count {
                let otherWord = Array(strs[j])

                // Nếu chuỗi này ngắn hơn vị trí i → nghĩa là không thể có tiền tố dài hơn → dừng
                // Hoặc nếu ký tự tại vị trí i không trùng → dừng
                if i >= otherWord.count || otherWord[i] != currentChar {
                    return result
                }
            }
            result.append(currentChar)
        }

        return result
    }

    func test() {
        let strs = ["flower", "flow", "flight"] /// expect: "fl"
        let strs2 = ["dog", "racecar", "car"] /// expect: ""
        print("the longest [flower, flow, flight]: \(longestCommonPrefix(strs))")
        print("the longest [dog,racecar,car]: \(longestCommonPrefix(strs2))")
    }
}
