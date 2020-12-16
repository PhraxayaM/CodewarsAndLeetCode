//: [Previous](@previous)

import Foundation

/*
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

 

Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Output: Because nums[0] + nums[1] == 9, we return [0, 1].
Example 2:

Input: nums = [3,2,4], target = 6
Output: [1,2]
Example 3:

Input: nums = [3,3], target = 6
Output: [0,1]
*/

//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]

// iterate through array and compare values of first index value with all remaining arrays
// if target value is found, return index of current values
// if no target is found, return empty array

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    // start with the first index
        for currentIndex in 0..<nums.count {
            // we need to compare values with all index after the first, if target is not found, first index will move to the next value and compare with the rest of the remaining values in array
            for nextIndex in 1..<nums.count {
                if nums[currentIndex] + nums[nextIndex] == target {
                    
                    return [currentIndex, nextIndex]
                }
            }
        }
        return []
    }

var test1 = [1,2,3,4]
var test2 = [3,3,4,2]
var test3 = [3,2,1,8]
var targetTest = 7
twoSum(test3, targetTest)
