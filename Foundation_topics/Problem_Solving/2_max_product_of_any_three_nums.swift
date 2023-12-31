//Find largest product of any three numbers in an array of integers

//Case 1: Non cosecutive numbers

func largestProductOfThreeNumbers(array:[Int]) -> Int{

var firstLargestElement = Int.min
var secondLargestElement = Int.min
var thirdLargestElement = Int.min
var firstLowest = Int.max
var secondLowest = Int.max
for eachElement in 0..<array.count{

    if array[eachElement] > firstLargestElement{
       thirdLargestElement = array[eachElement]
       secondLargestElement = firstLargestElement
       firstLargestElement =  array[eachElement]
    }else if array[eachElement] > secondLargestElement{
       thirdLargestElement = secondLargestElement
       secondLargestElement = array[eachElement]
    }else if array[eachElement] > thirdLargestElement{
       thirdLargestElement = array[eachElement]
    }

    if array[eachElement] < firstLowest {
            secondLowest = firstLowest
            firstLowest = array[eachElement]
    }else if array[eachElement] < secondLowest{
            secondLowest = array[eachElement]
    }
    
}
return (firstLargestElement * secondLargestElement * thirdLargestElement) >= (firstLargestElement * firstLowest * secondLowest) ? (firstLargestElement * secondLargestElement * thirdLargestElement) : (firstLargestElement * firstLowest * secondLowest)

}
print("with negative numbers too:\(largestProductOfThreeNumbers(array:[-100,-20,5,10,11,14,15,20]))")

//Case 1: cosecutive numbers
func largestProductOfThreeConsecutiveNumbers(array:[Int]) -> Int{

var greatestProductOfThreeConsecutiveNumbers = Int.min

for index in 0..<array.count - 2{

if ((array[index] * array[index+1] * array[index+2]) > greatestProductOfThreeConsecutiveNumbers){
    greatestProductOfThreeConsecutiveNumbers = (array[index] * array[index+1] * array[index+2])
    print("\(array[index]), \(array[index+1]), \(array[index+2])")
}

}
return greatestProductOfThreeConsecutiveNumbers

}

print("Consecutive numbers: \(largestProductOfThreeConsecutiveNumbers(array:[5,10,11,14,3,-15,-20]))")


//Case 3: Non consecutive which can have negative numbers