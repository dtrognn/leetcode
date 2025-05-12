//
//  028 Find the Index of the First Occurrence in a String.swift
//  leetcode
//
//  Created by dtrognn on 11/5/25.
//

import Foundation

// Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
//
//
//
// Example 1:
//
// Input: haystack = "sadbutsad", needle = "sad"
// Output: 0
// Explanation: "sad" occurs at index 0 and 6.
// The first occurrence is at index 0, so we return 0.
// Example 2:
//
// Input: haystack = "leetcode", needle = "leeto"
// Output: -1
// Explanation: "leeto" did not occur in "leetcode", so we return -1.
//
//
// Constraints:
//
// 1 <= haystack.length, needle.length <= 104
// haystack and needle consist of only lowercase English characters.

class FindTheIndexOfTheFirstOccurrenceInAStringSoltion {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard haystack.count >= needle.count else { return -1 }

        let haystackChars = Array(haystack)
        let needleChars = Array(needle)

        let hLen = haystackChars.count
        let nLen = needleChars.count

        for i in 0 ..< (hLen - nLen + 1) {
            var count = 0

            for j in 0 ..< nLen {
                if haystackChars[i + j] != needleChars[j] { break }
                count += 1
            }

            if count == needleChars.count {
                return i
            } else {
                continue
            }
        }

        return -1
    }

    func test() {
        let haystack = "sadbutsad"
        let needle = "sad"

        print("sadbutsad - sad output: \(strStr(haystack, needle))")
    }
}
