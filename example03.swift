import Foundation

// MARK: - EXAMPLES

func iterateWord(word: String) {
    for char in word {
        print(char)
    }
}
//iterateWord(word: "Abcde")

func iterateWithIndex(word: String) {
    let startIndex = word.startIndex
    for index in 0..<word.count {
        let nextIndex = word.index(startIndex, offsetBy: index)
        print(word[nextIndex])
    }
}
//iterateWithIndex(word: "Abcde")

/// A set does not contain duplicates and is in random order
func removeDuplicate(numbers: [Int]) {
    var numberSet = Set<Int>()
    for num in numbers {
        numberSet.insert(num)
    }
    print(numberSet)
}
//removeDuplicate(numbers: [1,1,2,3,3,3,4])


func numberExistsInSet(mySet: Set<Int>, number: Int) -> Bool {
    return mySet.contains(number)
}
let daysOff: Set<Int> = [24, 25, 1, 2, 3]
//print(numberExistsInSet(mySet: daysOff, number: 23))


func personInfo(name: String, location: String) -> [String: String] {
//    let infoDictionary: [String: String] = [:]
    var infoDictionary = [String:String]()
    infoDictionary["name"] = name
    infoDictionary["location"] = location
    return infoDictionary
}
//print(personInfo(name: "Michael", location: "Chicago"))



// MARK: - QUESTIONS

/// 1. Write a function that returns an array of the positions of a character in the word
/// Could not solve this question. This question was not answered properly.
func positionOf(character: Character, in word: String) -> [Int] {
    var ans = [Int]()
    let zeroIndex = word.startIndex
    for index in 0..<word.count{
        let nextIndex = word.index(zeroIndex, offsetBy: index)
//        let nextIndexInt: Int = word.startIndex.distanceTo(range.startIndex)
        if (character == word[nextIndex]){
            print(index)
           ans.append(index)
        }
    }
    return ans
}
//print(positionOf(character: "l", in: "Hello"))  // -> [2, 3]



/// 2. Write a function that takes a string and returns a string without any duplicated letters
/// "hello" -> "helo"
func removeDuplicateLetters(word: String) -> String{
    var wordSet = Set<Character>()
    var ans = ""
    for letter in word {
        wordSet.insert(letter)
    }
    for letter in wordSet {
        ans.append(letter)
    }
    print(wordSet)
    return ans
}
//print(removeDuplicateLetters(word: "hello"))



/// 3.  Write a function that returns a dictionary with the (key, value) storing (character, count of character) for a word
/// HELLO -> [H: 1, E: 1, L: 2, O: 1]
/// Could not solve this question. This question was not answered properly.
func stringToDictionary(word: String) -> [Character: Int] {
    var ans = [Character: Int]()
    for letter in word {
        if (ans[letter] != nil){
            print(ans)
           ans[letter]! += 1
        } else {
            ans[letter] = 1
        }
    }
    
    return ans
}
//print(stringToDictionary(word: "HELLO"))



/// 4.  Write isPalindrome that returns a boolean
/// Could not solve this question. This question was not answered properly. 
func isPalindrome(word: String) -> Bool {
//    for char in word {
//        print(
//        for oppositeChar in word.reversed(){
//            if (oppositeChar != char) {
//                return false
//            }
//        }
//    }
//    return true
    return word == String(word.reversed())
}
print(isPalindrome(word: "madam"))



/// 5. Write a funciton that returns the most frequently occurring letter in a string
/// HELLO -> "L"




/// 6.  Write a function that takes an array of Int and returns true if there is any two numbers that sums to 0
/// Use set or dictionary





