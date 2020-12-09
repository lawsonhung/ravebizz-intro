import Foundation


// MARK: - EXAMPLES
/// Ways to print variables
func printNumber(inputNumber: Int) {
    print("Your number is: ", inputNumber)
    print("Your number is: \(inputNumber)")
}

func addFiveTo(inputNumber: Int) -> Int {
    /// use 'var' if your variable changes
    var result = 0
    result = inputNumber + 5
    return result
}

func isEven(inputNumber: Int) -> Bool {
    return inputNumber % 2 == 0
}

func loopExample(targetNum: Int) {
    /// loop from 1 to targetNum
    for num in 1...targetNum {
        print(num)
    }
}


// MARK: - QUESTIONS
func isDivisibleByThree(inputNumber: Int) -> Bool {
    return inputNumber % 3 == 0
}
// print(isDivisibleByThree(inputNumber:3))
// print(isDivisibleByThree(inputNumber:2))


func sumOfThreeNumbers(firstNum: Int, secondNum: Int, thirdNum: Int) -> Int {
    return firstNum + secondNum + thirdNum
}
// print(sumOfThreeNumbers(firstNum: 1, secondNum: 2, thirdNum: 3))

/// divisible by 3 or 5 but not both
func fizzBuzz(num: Int) -> Bool {
    if (num % 3 == 0 && num % 5 == 0) {
        return false
    }
    else if (num % 3 == 0 || num % 5 == 0) {
        return true
    }
    else {
        return false
    }
}
// print(fizzBuzz(num:15))
// print(fizzBuzz(num:3))
// print(fizzBuzz(num:5))
// print(fizzBuzz(num:1))

/// sum all numbers from 1 to target
func sumFromOne(targetEndNum: Int) -> Int {
    var ans = 0;
    for num in 1...targetEndNum {
        ans = ans + num
    }
    
    return ans
}
// print(sumFromOne(targetEndNum:4))

/// sum only even numbers
func sumEvenFromOne(targetEndNum: Int) -> Int {
    var ans = 0;
    for num in 1...targetEndNum {
        if (isEven(inputNumber:num)) {
            ans += num
        }
    }
    return ans
}
// print(sumEvenFromOne(targetEndNum:4))

/// loop from 1 to target, sum all numbers that returns true for fizzbuzz
func sumFizzBuzz(targetEndNum: Int) -> Int {
    var ans = 0;
    for num in 1...targetEndNum {
        if (fizzBuzz(num:num)){
            ans += num
        }
    }
    return ans
}
// print(sumFizzBuzz(targetEndNum:5))

func isPrime(num: Int) -> Bool {
    if (num == 2) {
        return true
    }
    for div in 2...num-1 {
        if (num % div == 0) {
            return false
        }
    }
    return true
}
// print(isPrime(num:2))
// print(isPrime(num:4))
// print(isPrime(num:5))
// print(isPrime(num:6))


/// Take average of two numbers, if there is a decimal place, round up
/// Input 5 and 6 will return 6
func averageTwoNumberRoundUp(firstNum: Int, secondNum: Int) -> Int {
    var ans = (Double(firstNum) + Double(secondNum)) / 2
    ans = ceil(ans)
    return Int(ans)
}
print(averageTwoNumberRoundUp(firstNum: 5, secondNum: 6))


