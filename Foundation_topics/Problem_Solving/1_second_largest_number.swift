
//Find second largest element without duplicates
func findSecondLargestElement(array:[Int]) -> Int{


var firstLargestElement = Int.min
var secondLargestElement = Int.min

for eachElement in 0..<array.count{
    if array[eachElement] > firstLargestElement{
        secondLargestElement = firstLargestElement
       firstLargestElement =  array[eachElement]
       print("firstLargestElement:\(firstLargestElement)")
    }else if array[eachElement] > secondLargestElement{
        secondLargestElement = array[eachElement]
    }
    
}
return secondLargestElement

}

print(findSecondLargestElement(array:[1,2,3,4,4]))

//Advice: before running the code make sure to test all corner case scenarios