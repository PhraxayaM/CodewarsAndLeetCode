/*
 Link: https://leetcode.com/problems/number-of-good-pairs/
 
 Problem:
 
 Given an array of integers nums.

 A pair (i,j) is called good if nums[i] == nums[j] and i < j.

 Return the number of good pairs.

  

 Example 1:

 Input: nums = [1,2,3,1,1,3]
 Output: 4
 Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
 Example 2:

 Input: nums = [1,1,1,1]
 Output: 6
 Explanation: Each pair in the array are good.
 Example 3:

 Input: nums = [1,2,3]
 Output: 0
  


 
 */

func numIdenticalPairs(_ nums: [Int]) -> Int  {
  var sortedNum = nums
  let mappedItems = sortedNum.map { ($0, 1) }
  let counts = Dictionary(mappedItems, uniquingKeysWith: +)
  var duplicates = 0
    print("mappeditems,", mappedItems)
    print("counts,", counts)
  for item in counts {
    let x = item.value
    print("x", x, item)
    duplicates = duplicates + (x * (x-1)/2)
    print("duplicates", duplicates)
  }
  return duplicates
}

let test1 = [1,2,3,1,1,3]

numIdenticalPairs(test1)
