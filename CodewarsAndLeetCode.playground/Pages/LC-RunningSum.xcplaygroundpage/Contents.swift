/*
 Link: https://leetcode.com/problems/running-sum-of-1d-array/
 
 Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

 Return the running sum of nums.

  

 Example 1:

 Input: nums = [1,2,3,4]
 Output: [1,3,6,10]
 Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
 Example 2:

 Input: nums = [1,1,1,1,1]
 Output: [1,2,3,4,5]
 Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
 Example 3:

 Input: nums = [3,1,2,10,1]
 Output: [3,4,6,16,17]
 */

// Solution: We can create a new list and append the new values into the array. The results of the output can be achieved by iterating through the values of each input and adding them onto a tracker, then appending the value of the current tracker before moving onto the next value and repeating it again

func runningSum(_ nums: [Int]) -> [Int] {
    //we need a place to store our array of Integers
       var answer = [Int]()
    // the tracker we need
       var sum = 0
    //loop through our array of integers
       for num in nums {
        //add the current value of our tracker with the value of the current index
           sum += num
        //append that value after we add
           answer.append(sum)
       }
       return answer
   }

let testNums1 = [1,2,3,4]
runningSum(testNums1)
let testNums3 = [3,1,2,10,1]
runningSum(testNums1)
