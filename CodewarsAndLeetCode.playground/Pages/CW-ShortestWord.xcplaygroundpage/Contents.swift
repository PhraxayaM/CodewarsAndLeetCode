/* Link: https://www.codewars.com/kata/57cebe1dc6fdc20c57000ac9/train/swift

 Simple, given a string of words, return the length of the shortest word(s).

 String will never be empty and you do not need to account for different data types.


 */

func find_short(_ str: String) -> Int
{
    let strArray = str.split(separator: " ")
    var min = strArray[0].count
    for word in strArray {
        if word.count < min {
            min = word.count
        }
    }
    return min
}
