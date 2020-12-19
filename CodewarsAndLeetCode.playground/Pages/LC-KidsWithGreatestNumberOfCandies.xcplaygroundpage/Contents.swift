/*
 Link: https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/
 Given the array candies and the integer extraCandies, where candies[i] represents the number of candies that the ith kid has.

 For each kid check if there is a way to distribute extraCandies among the kids such that he or she can have the greatest number of candies among them. Notice that multiple kids can have the greatest number of candies.

  

 Example 1:

 Input: candies = [2,3,5,1,3], extraCandies = 3
 Output: [true,true,true,false,true]
 Explanation:
 Kid 1 has 2 candies and if he or she receives all extra candies (3) will have 5 candies --- the greatest number of candies among the kids.
 Kid 2 has 3 candies and if he or she receives at least 2 extra candies will have the greatest number of candies among the kids.
 Kid 3 has 5 candies and this is already the greatest number of candies among the kids.
 Kid 4 has 1 candy and even if he or she receives all extra candies will only have 4 candies.
 Kid 5 has 3 candies and if he or she receives at least 2 extra candies will have the greatest number of candies among the kids.
 Example 2:

 Input: candies = [4,2,1,1,2], extraCandies = 1
 Output: [true,false,false,false,false]
 Explanation: There is only 1 extra candy, therefore only kid 1 will have the greatest number of candies among the kids regardless of who takes the extra candy.
 Example 3:

 Input: candies = [12,1,12], extraCandies = 10
 Output: [true,false,true]
 */

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        // we can use Swift's built in Max function to get the highest value in an array
        var greatestValueArray = candies.max()!
    
        // we need to create a place to store our boolean values
        var mostCandy = [Bool]()
        
        // loop through our given array
        for num in candies {
            // check if value in array plus our extra candies is greater than or equal to the highest value in the array
            if num + extraCandies >= greatestValueArray {
                // if our current value in the array is greater than or equal than the highest number we want to append a true boolean value into our empty array of booleans
                var hasGreatest = true
                mostCandy.append(hasGreatest)
            } else {
                var doesNot = false
                mostCandy.append(doesNot)
            }
        }
        
        return mostCandy
    }


let candiesTest = [1,4,2,3]
let candiesTest2 = [0,4,2,3]
let extraCandiesTest = 3
let extraCandiesTest2 = 1


kidsWithCandies(candiesTest, extraCandiesTest2)

