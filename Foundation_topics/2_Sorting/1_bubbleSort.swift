//time complexity : O(n^2)
//It swaps the adjacent elements if they are in wrong order
//This algorithm is not suitable for large data sets as its average and worst-case time complexity is quite high



//bubble sort in ascending order
     
func sortArrayInAscendingOrder(_ unsortedArray: [Int]) -> [Int]{

    var sortedArray = unsortedArray
    for i in stride(from:0, to: unsortedArray.count - 2, by: 1){

        for j in stride(from:0, to: unsortedArray.count - i - 1 , by: 1){
            if (sortedArray[j] > sortedArray[j+1]){

                // let greaterNumber = sortedArray[j]
                // sortedArray[j] = sortedArray[j+1]
                // sortedArray[j+1] = greaterNumber
                sortedArray.swapAt(j,j+1)
            }
        }
    }
    return sortedArray

}
print(sortArrayInAscendingOrder([7,8,1,9,4]))

//bubble sort in descending order
     
func sortArrayInDescendingOrder(_ unsortedArray: [Int]) -> [Int]{

    var sortedArray = unsortedArray
    for i in stride(from:0, to: unsortedArray.count - 2, by: 1){

        for j in stride(from:0, to: unsortedArray.count - i - 1 , by: 1){
            if (sortedArray[j] < sortedArray[j+1]){
                sortedArray.swapAt(j,j+1)
            }
        }
    }
    return sortedArray

}
print(sortArrayInDescendingOrder([7,8,1,9,4]))



