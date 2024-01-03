//In a sorted array find two numbers which adds to given target. Print all pairs

func getPairsWhichAddUpToGivenTarget(array:[Int], target: Int) -> [[Int]]{

    if array.count == 0{
        print("Array is empty")
        return [[Int]]()
    }


    var resultArray = [[Int]]()
    var numberDictionary = [Int:Int]()
    let maxValueToSeach = target - array.min()!

    for eachNumber in 0..<array.count {

print(array[eachNumber])
        if array[eachNumber] >= maxValueToSeach{
            return resultArray
        }
        let requiredInt = target - array[eachNumber]
        if let secondNumber = numberDictionary[requiredInt]{
            print("first number: \(array[eachNumber]), second number: \(secondNumber)")
            let pairNumbers = [array[eachNumber],secondNumber]
            resultArray.append(pairNumbers)
        }
        if numberDictionary[array[eachNumber]] == nil{
            numberDictionary[array[eachNumber]] = array[eachNumber]
        }
       
    }
    return resultArray
}
print(getPairsWhichAddUpToGivenTarget(array:[-2,-1,1,2,3,4,5,6,7,8,11,19], target: 8))

