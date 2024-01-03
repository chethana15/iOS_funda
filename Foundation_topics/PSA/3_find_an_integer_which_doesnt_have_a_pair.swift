// Find an integer in an array where it's count is odd

func giveANumberWhichHasOddPair(array:[Int]) -> Int{
    var numberCountDictionary = [Int:Int]()

    for index in 0..<array.count{
        print(numberCountDictionary)
        if numberCountDictionary[array[index]] != nil{
            numberCountDictionary.removeValue(forKey: array[index])
        }else{
            numberCountDictionary[array[index]] = array[index]
        }
    }
    return numberCountDictionary.first!.key
}

print(giveANumberWhichHasOddPair(array:[1,2,3,4,1,2,3,4,1,2,4,1,2,3,4,9]))


// Find an integer in an array where it's count is odd using XOR gate

func giveANumberWhichHasOddPairWithXor(array:[Int]) -> Int{
    var numberCount = 0

    for index in 0..<array.count{
        print("initial numberCount:\(numberCount)")
        numberCount ^= array[index]
        print("after changing numberCount:\(numberCount)")
    }
    return numberCount
}

print(giveANumberWhichHasOddPairWithXor(array:[1,2,3,4,1,2,3,4,1,2,4,1,2,3,4]))

