//Print all pairs of numbers where sum of two numbers give equal to target

//MARK: - Using two pointer method(It should always be sorted. Make sure to know if it's sorted in ascending or descinding order).

//Time complexity - O(n)
//Space complexity - O(1)

func givePairOfNumbersWhoseSumEqualToTarget(_ arraySortedInAscendingOrder:[Int], _ target: Int) -> [[Int]]{
    
        var leftPointerAtIndex = 0
        var rightPointerAtIndex = arraySortedInAscendingOrder.count - 1
        var finalArray = [[Int]]()
        while (leftPointerAtIndex < rightPointerAtIndex){
            if (arraySortedInAscendingOrder[leftPointerAtIndex] + arraySortedInAscendingOrder[rightPointerAtIndex] == target){
                finalArray.append([arraySortedInAscendingOrder[leftPointerAtIndex],arraySortedInAscendingOrder[rightPointerAtIndex]])
                leftPointerAtIndex += 1  // Adjust pointers to find more pairs
                rightPointerAtIndex -= 1
            }else if (arraySortedInAscendingOrder[leftPointerAtIndex] + arraySortedInAscendingOrder[rightPointerAtIndex] < target){
                leftPointerAtIndex += 1
            }else if (arraySortedInAscendingOrder[leftPointerAtIndex] + arraySortedInAscendingOrder[rightPointerAtIndex] > target){
                rightPointerAtIndex -= 1
            }
        }
        return finalArray
}
print(givePairOfNumbersWhoseSumEqualToTarget([-2,-1,1,2,3,4,5,6,7,8,11,19],8))

//Print number of pairs sums to given target
print("Number of pairs: \(givePairOfNumbersWhoseSumEqualToTarget([-2,-1,1,2,3,4,5,6,7,8,11,19],8).count)")