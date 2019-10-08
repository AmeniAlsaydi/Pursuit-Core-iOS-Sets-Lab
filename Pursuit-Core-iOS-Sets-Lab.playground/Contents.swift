import UIKit

// Uncomment the "assert" lines for each problem when you have a solution, and run the playground to test.  When you have uncommented out the assert lines, no error messages or print statements means that your code is working correctly.

// Question One

// Create a new array numbersWithNoDuplicates that has all of the elements from numbers without any duplicates.  It should be in the same order as the original.

let numbers = [1,1,2,4,4,4,6,6,7,8]

var numbersWithNoDuplicates = [Int]()

// Answer:

var arrayToSet = Set(numbers)
// print(arrayToSet)

numbersWithNoDuplicates = Array(arrayToSet.sorted())

assert(numbersWithNoDuplicates == [1,2,4,6,7,8], "Was expecting [1,2,4,6,7,8], but got \(numbersWithNoDuplicates)")

// Questions Two

// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.  It should be in the same order as the original.

let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]

var scoresThatAppearOnce = [Int]()

// Answer:

var visitedNum: [Int] = []

for num in scores {

    if !visitedNum.contains(num) {
        scoresThatAppearOnce.append(num)
        visitedNum.append(num)
        
    } else {
        if let index = scoresThatAppearOnce.firstIndex(of: num) { // optional binding of the first index of num in scoresThatAppearOnce and then setting it to index
            scoresThatAppearOnce.remove(at: index)
        }
    }
}

// print(scoresThatAppearOnce)

assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")

// Question Three

// a.

// Given arrOne and arrTwo, create a variable arrThree which is equal to the UNION of arrOne and arrTwo.  It should not contain any duplicate elements.  Sort arrThree from smallest to greatest.

// Answer:

let arrOne = [1,2,3,4,5]
let arrTwo = [3,4,5,6,7]

var arrThree: [Int] = []

let set1 = Set(arrOne)
let set2 = Set(arrTwo)

var set3 = set1.union(set2).sorted()

arrThree = Array(set3)


assert(arrThree == [1,2,3,4,5,6,7], "Was expecting [1,2,3,4,5,6,7], but got \(arrThree)")

// b.

// Given arrFour and arrFive, create a variable arrSix with is equal to the INTERSECTION of arrFour and arrFive.  If should not contain any duplicate elements.  Sort arrSix from smallest to greatest.

let arrFour = [1,2,3,4,5]
let arrFive = [3,4,5,6,7]

var arrSix: [Int] = []

// Your code here

let set4 = Set(arrFour)
let set5 = Set(arrFive)

let set6 = set4.intersection(set5)
arrSix = Array(set6.sorted())

assert(arrSix == [3,4,5], "Was expecting [3,4,5], but got \(arrSix)")

// Question Four

// Given the 4 arrays of Ints below, create a new array, sorted in ascending order, that contains all the values without duplicates.

let numsOne = [2, 4, 5, 6, 8, 10, 12]
let numsTwo = [1, 2, 3, 4, 5, 6]
let numsThree = [5, 6, 7, 8, 9, 10, 11, 12]
let numsFour = [1, 3, 4, 5, 6, 7, 9]

// Answer:

var allNumsWithNoDuplicates: [Int] = []

allNumsWithNoDuplicates = numsOne + numsTwo + numsThree + numsFour
var setNum = Set(allNumsWithNoDuplicates)

allNumsWithNoDuplicates = Array(setNum.sorted())



assert(allNumsWithNoDuplicates == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "Was expecting [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], but got \([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])")


// Question Five

// Determine if a String is a pangram. A pangram is a string that contains every letter of the alphabet at least once.

// e.g "The quick brown fox jumps over the lazy dog" is a pangram e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram

let strOne = "The quick brown fox jumps over the lazy dog"
let strTwo = "The quick brown fox jumped over the lazy dog"
let strThree = "Sphinx of black quartz, judge my vow"

var strOneIsPangram: Bool = false
var strTwoIsPangram: Bool = false
var strThreeIsPangram: Bool = false

// Answer:

var alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

for letter in alphabet {
    if strOne.contains(letter) {
        strOneIsPangram = true
    } else {
        strOneIsPangram = false
        break
    }
}

for letter in alphabet {
    if strTwo.contains(letter) {
        strTwoIsPangram = true
    } else {
        strTwoIsPangram = false
        break
    }
}

for letter in alphabet {
    if strThree.contains(letter) {
        strThreeIsPangram = true
    } else {
        strThreeIsPangram = false
        break
    }
}

assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")
assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")
assert(strThreeIsPangram == false, "Was expecting false, but got \(strThreeIsPangram)")









