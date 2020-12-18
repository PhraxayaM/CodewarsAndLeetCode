/* Link: https://www.codewars.com/kata/57cebe1dc6fdc20c57000ac9/train/swift

 Simple, given a string of words, return the length of the shortest word(s).

 String will never be empty and you do not need to account for different data types.


 */

import XCTest
func find_short(_ str: String) -> Int {
  var smallestNum = [Int]()
  var tracker: Int = 0
  for char in str {
    if char != " " {
      tracker += 1
    } else {
      smallestNum.append(tracker)
      tracker = 0
    }
    }
  guard let answer = smallestNum.min() else { return  0 }
  return answer
  }

func testExample() {
       XCTAssertEqual(3, find_short("bitcoin take over the world maybe who knows perhaps"))
       XCTAssertEqual(3, find_short("lets talk about javascript the best language"))
       XCTAssertEqual(1, find_short("i want to travel the world writing code one day"))
       XCTAssertEqual(2, find_short("Lets all go on holiday somewhere very cold"))
    XCTAssertEqual(2, find_short("Lets all go on holiday somewhere very cold cold cold"))
   }

testExample()
