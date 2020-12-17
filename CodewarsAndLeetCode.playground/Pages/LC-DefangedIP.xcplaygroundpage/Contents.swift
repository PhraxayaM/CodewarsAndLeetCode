/*
 Given a valid (IPv4) IP address, return a defanged version of that IP address.

 A defanged IP address replaces every period "." with "[.]".

  

 Example 1:

 Input: address = "1.1.1.1"
 Output: "1[.]1[.]1[.]1"
 Example 2:

 Input: address = "255.100.50.0"
 Output: "255[.]100[.]50[.]0"
 */


func defangIPaddr(_ address: String) -> String {
    //initialize an empty string
    var convertString: String = ""
    
    // We can iterate through a string since it's an array
    for char in address {
        // we append [.] into our empty string everytime we come accross .
        if char == "." {
            convertString.append("[.]")
        } else {
            // everytime its a character other than ., we append the character instead
            convertString.append(char)
        }
    }
    return convertString

}


let address = "1.1.1.1.1."
defangIPaddr(address)


