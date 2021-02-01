import UIKit
"""
## Problems

1. You can iterate over the key-value pairs in a dictionary with a for-in loop. Each item in the dictionary is returned as a (key, value) tuple. Print all the values from `colorHex`.

"""
var colorHex: [String:String] = [
    "purple" : "#6C3483",
    "blue" : "#2874A6",
    "green": "#1E8449" ,
    "orange" : "#D35400",
    "yellow" : "#F1C40F",
    "white" : "#FFFFFF",
    "black" : "#000000"
]
for i in colorHex{
    print(i.value)
}

"""

2. Given an array of colors. We need to know how many times each color appears in the array.

"""
var colors = ["red", "orange", "purple", "pink", "blue", "red", "green", "red", "blue", "purple", "pink" , "purple", "purple"]


//Your solution should lead to this answer:
var tempList:[String] = []
for i in colors{
    if tempList.contains(i){
//        do nothing
    }else{
        tempList.append(i)
    }

}

var dict:[String:Int] = [:]
//var
for color in colors{
//    if dict.contains the key(color) ++ value of that key
//if dict dont contain key(color) append key to dict and set value to 1.
    if dict[color] != nil{
        dict[color]! += 1
    }else{
        dict[color] = 1
    }
}
print(tempList)
print(dict)


"""
```swift
red - 3
orange - 1
purple - 4
pink - 2
blue - 2
green - 1
```

3. Write a function that returns the first N Fibonacci numbers.

Sequence: 1,1,2,3,5,8,13

"""
func fibo(n: Int) -> [Int]{
    var num1 = 0
    var num2 = 1
    var list:[Int] = []
    
    list.append(1)
    for _ in 0 ..< n - 1{
        let num = num1 + num2
        num1 = num2
        num2 = num
        list.append(num)
    }
    print(list)
    return(list)
}

fibo(n: 7)
//example:

//fibo(n: 7) -> [1,1,2,3,5,8,13]

//fibo(n: 5) -> [1,1,2,3,5]
"""

4. Write a function that prints the powers of 2 that are less than or equal to N.
"""
func power(n: Int) -> Int{
    var result: Int = 0
    var count: Int = 0
    var num: Int = 1
    while count < n{
        num = num * n
        count += 1
        
    }
    result = num
    return result
}
print(power(n: 2))

"""
5. Given:
"""

var coursesAndStudents = [("MOB", 30), ("BEW", 40), ("FEW", 30), ("DS", 40)]

"""
Write a function that prints how many students belong to each track.

Output:


There are 30 students in the MOB track
There are 40 students in the BEW track
There are 30 students in the FEW track
There are 40 students in the DS track

"""
func students(dictionary:[(String,Int)]){
    
    for (myKey, myValue) in dictionary{
        print("There are \(myValue) students in the \(myKey) track")
    }
}
students(dictionary: coursesAndStudents)

"""
6. Write a function to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
"""
let check = [1,2,3,4,1]

func checkArray(list:[Int]) -> Bool{
    if check.count <= 1{
        print("TOO SHORT")
        return false
    }else if check[0] == check[check.count - 1]{
        print("TRUE")
        return true
    }
    print("FALSE")
    return false
}
    

checkArray(list: check)


"""
7. Write a function to compute the sum of all the elements of a given array of integers.
"""
let addList = [1,2,3,4,5]
func addSum(list:[Int]) -> Int{
//    let total = list.reduce(0, +)
    var total = 0
    var counter = 0
    while counter < list.count{
        let value = list[counter]
        total += value
        counter += 1
    }
    return total
}
print(addSum(list: addList))

"""
8. Write a function to reverse the elements of an array of integers to left direction. `[1,2,3]` becomes `[3,2,1]`
"""
let reverseList = [1,2,3,4,5]
func reverseListLeftRotation(list:[Int]) -> [Int] {
    var newList:[Int] = []
    var index = list.count - 1
    while index >= 0{
        let foo = list[index]
        newList.append(foo)
        index -= 1
    }
    print(newList)
    return newList
}
reverseListLeftRotation(list: reverseList)

"""
9. Write a function that accepts a String as its only parameter, and returns true if the string has
only unique letters.
"""
let word:String
func onlyUniqueLetters(word:String) -> Bool {
    var letterList:[Character] = []
    for letter in word{
        if letterList.contains(letter){
            return false
        }else{
            letterList.append(letter)
        }
    }
    return true
}
print(onlyUniqueLetters(word: "Hello"))

"""
10. Write a function that accepts a String and a character and returns how many times that specific character appears in the string.
"""
let wordToCount: String
let character: Character
func howManyTimesThatCharacteAppears(wordToCount:String, character:Character) -> Int{
    var letterList:[Character] = []
    var total:Int = 0
    for letter in wordToCount{
        letterList.append(letter)
    }
    if letterList.contains(character){
        for l in letterList{
            if l == character{
                total += 1
            }
        }
    }
    print("Total: ", total)
    return(total)
}

howManyTimesThatCharacteAppears(wordToCount: "Does this work?", character: "a")

"""
11.  Given a Grid with the following numbers.

![grid](grid.png)

Write a function that adds up the elements in the even rows only, like this:

![grid2](grid2.png)
"""
let column0:[Int]=[0,0,0,0,0]
let column1:[Int]=[0,1,2,3,4]
let column2:[Int]=[0,2,4,6,8]
let column3:[Int]=[0,3,6,9,12]
let column4:[Int]=[0,4,8,12,16]
let row=[column0, column1, column2, column3, column4]
func evenRowsOnly(list:[[Int]]){
    for sublist in list{
        if sublist[1] % 2 == 0{
            print("Even rows sum for row \(sublist[1]) is: ",addSum(list: sublist))
        }
    }
}
"""
Learning how to use hashtables in a more dynamic way would be cool.
"""
evenRowsOnly(list: row)





