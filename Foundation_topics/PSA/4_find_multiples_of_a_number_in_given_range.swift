     // Find multiples of an number in natural number of given size
    func giveMultiplesOfANumberInArrayCount(sizeOfArray: Int, findMultipleOf: Int) -> Int{

        if findMultipleOf == 0{
            return 0
        }
        var multipleCount = Int()

        for eachElement in stride(from: 1*findMultipleOf, through:sizeOfArray, by:findMultipleOf){
            print("eachElement: \(eachElement)")
            multipleCount = multipleCount + 1
        }
        return multipleCount
    }

    print(giveMultiplesOfANumberInArrayCount(sizeOfArray: 17, findMultipleOf: 4))

    func giveMultiplesOfANumberInArrayCountUsingFormula(sizeOfArray: Int, findMultipleOf: Int) -> Int{
        if findMultipleOf == 0{
            return 0
        }
        return sizeOfArray/findMultipleOf
    }
    print(giveMultiplesOfANumberInArrayCountUsingFormula(sizeOfArray: 17, findMultipleOf: 0))

    func giveMultiplesOfANumberInArrayBulb(sizeOfArray: Int) -> [Bool]{
       
        var arrayOfBulbsOnOff = Array(repeating: false, count: sizeOfArray)
        for eachElement in stride(from:1,through:sizeOfArray,by:1){
            for multipleElement in stride(from:eachElement,through:sizeOfArray,by:eachElement){
                arrayOfBulbsOnOff[multipleElement - 1] = !(arrayOfBulbsOnOff[multipleElement - 1])
                print("eachElement:\(eachElement), multipleElement:\(multipleElement)")
            }
        }
        return arrayOfBulbsOnOff
    }
    print(giveMultiplesOfANumberInArrayBulb(sizeOfArray: 10))
