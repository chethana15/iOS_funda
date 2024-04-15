
func seperateOddAndEvenInArray(_ array:[Int]) -> [Int]{

var rightPointer = array.count - 1
var leftPointer = 0
var  resultArray = array
while(leftPointer < rightPointer){
    while((rightPointer > 0) && (resultArray[rightPointer] % 2 == 0)){
        rightPointer -= 1
    }
    while((leftPointer < resultArray.count - 1) && (resultArray[leftPointer] % 2 == 1)){
        leftPointer += 1
    }
    if (leftPointer < rightPointer){
        resultArray.swapAt(leftPointer,rightPointer)
    }
}
return resultArray
}

print(seperateOddAndEvenInArray([7,0,2,3,9,7,11,52]))