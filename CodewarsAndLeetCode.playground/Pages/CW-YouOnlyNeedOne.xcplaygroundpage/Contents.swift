/* Link: https://www.codewars.com/kata/57cc975ed542d3148f00015b/train/swift
 
 You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.

 The type of a and x can be String or Int.

 Return true if the array contains the value, false if not.
 
 */

func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
    //initialize a boolean value to default to false because we will only change it to true if we find our target value x
    var check: Bool = false
    //iterate through our array "a"
  for char in a {
    // compare each value in the array with our target
    if char == x {
        //if our target is found, we change our check value to true because it exists
      check = true
    } else {
      // if it's not found, we don't do anything and we return our default value as false
    }
  }
  return check
}


let testA = [1, 3, 4]
let testB = [5, 3, 4]
let testC = ["1", "3", "h"]
let x = 1
let xc = "h"
check(testC, xc)
