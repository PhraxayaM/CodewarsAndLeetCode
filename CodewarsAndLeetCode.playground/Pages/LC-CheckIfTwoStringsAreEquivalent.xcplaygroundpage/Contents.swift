/*
 Link: https://leetcode.com/problems/check-if-two-string-arrays-are-equivalent/
 
 Given two string arrays word1 and word2, return true if the two arrays represent the same string, and false otherwise.

 A string is represented by an array if the array elements concatenated in order forms the string.

  

 Example 1:

 Input: word1 = ["ab", "c"], word2 = ["a", "bc"]
 Output: true
 Explanation:
 word1 represents string "ab" + "c" -> "abc"
 word2 represents string "a" + "bc" -> "abc"
 The strings are the same, so return true.
 Example 2:

 Input: word1 = ["a", "cb"], word2 = ["ab", "c"]
 Output: false
 Example 3:

 Input: word1  = ["abc", "d", "defg"], word2 = ["abcddefg"]
 Output: true
 */

func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
var w1 = ""
var w2 = ""

for word in word1 {
    w1 += String(word)
}

for word2 in word2 {
    w2 += String(word2)
}
  return w1 == w2
}
