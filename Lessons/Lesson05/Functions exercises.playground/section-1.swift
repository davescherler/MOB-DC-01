// Playground - noun: a place where people can play
// Lesson 05

// Complete these, in order, writing code under each TODO statement. Each statement calls for a function to be written, write each of them and then immediately call it after the function definition.

// TODO: Write a function that prints out "Hello world!" 10 times

func helloWorld () {
    println("Hello, World!")
    println("Hello, World!")
    println("Hello, World!")
    println("Hello, World!")
    println("Hello, World!")
    println("Hello, World!")
    println("Hello, World!")
    println("Hello, World!")
    println("Hello, World!")
    println("Hello, World!")
}

helloWorld()
helloWorld()

// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times

func line (#iterations: Int) {
    println("Hit this line \(iterations) times!")
}

line(iterations: 20)


// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"

func string (string: String) {
    println("Hello \(string) !")
}

string ("dave")


// TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"

func optionalString (input: String?) {
    var inputCheck = input
    if let inputCheck = input {
        println("Hello \(inputCheck)!")
    } else {
        println("Hello world!")
}
}

optionalString("dave")
    
    /*func readFromMashable() {
        var apiResults = "http://mashable.com/news.json"
        return apiResults
}
    func printRSSResults() {
        var results: String? = readfromMashable()
        if let newResults = results {
            println(newResults)
        }else {
            println("Sorry bro, no connecton")
        }
        
}*/

// TODO: Write a function that takes one parameter, n, and returns an integer, the nth series in the fibonacci
// sequence. The first fibonacci number is 0, the second is 1, the third is 1, the fourth is 2, fifth is 3, sixth is 5, etc. fibonacci numbers at sequence n are the sum of the n-1 and n-2 fibonacci number.

func fibonacci (N: Int) -> (Int) {
    var fibNum = N, current = 0, next = 1, result = 0
    for index in 0...fibNum {
        
        let tempVar = current //current = 3
                              //tempVarbecomes 3
        current = next        //current becomes next (5)
        next = tempVar + current  //next value becomes old current + new current
        result = tempVar
    }
    return result
}

fibonacci(9)

// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.

fibonacci(20)

// sum of 1, 2, 3...20

var sum = 0
for fib in 0...20 {
    sum += fibonacci(fib)
}
println(sum)


// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.

var odd1 = 3, odd2 = 5, odd3 = 7, odd4 = 11, odd5 = 13, odd6 = 17
var even1 = 2, even2 = 4, even3 = 6

func primeOrNot (#enterNumber: Int) {
    var even = 2
    var odd = 3
    if enterNumber % 2 == 0 {
        println("The number \(enterNumber) is prime")
    //} else if enterNumber {
}
}


/* if a number divided by 2 has no remainder (% 2 == 0), then it's even, has a factor of 2, and thus not prime.
   if a number divided by 2 has a remainder (%2 != 0), then it's odd, and can be prime or composite.
*/

// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)

// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).

    func withTip (#bill: Float, #enterTipPercent: Float) {
    if (enterTipPercent > 0) {
        var tipAmount = enterTipPercent * bill
        var newTotal = bill + tipAmount
        println("The Total is $\(newTotal)")
    } else {
        println("The Total is $\(bill)")
        }
    }
    
withTip(bill: 50.00, enterTipPercent: 00.20)







// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.

// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.

// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).

// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings are equal

// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times.
