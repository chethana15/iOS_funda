// https://leetcode.com/problems/sort-the-people/description/



class Solution {
    // My solution -> Time Complexity: O(n^2), Space Complexity: O(1)
    func sortPeople1(_ names: [String], _ heights: [Int]) -> [String] {
        var namesSorted = names
        var heightsSorted = heights
        for i in stride(from:0, to:heights.count - 1, by:1){

            for j in stride(from:0, to:heights.count - i - 1, by:1){
                if(heightsSorted[j] < heightsSorted[j+1]){
                    heightsSorted.swapAt(j,j+1)
                    namesSorted.swapAt(j,j+1)
                }
            }

        }
        return namesSorted
    }
//Best solution: Time Complexity: O(n log n),Space Complexity: O(n)
    func sortPeople2(_ names: [String], _ heights: [Int]) -> [String] {
        // zip(heights, names): This function takes two arrays, heights and names, 
        // and combines them into pairs. For example, if heights is [160, 170, 155] and names is ["Alice", "Bob", "Charlie"],
        //  zip would create pairs like [(160, "Alice"), (170, "Bob"), (155, "Charlie")]
        let result = zip(heights, names)
        .sorted{$0 > $1 }
        .map{ $0.1 }
        return result
    }
}
let solution = Solution()
let names = ["John", "Alice", "Bob", "Charlie"]
let heights = [175, 160, 180, 165]
let sortedNames1 = solution.sortPeople1(names, heights)
print(sortedNames1)

let sortedNames2 = solution.sortPeople2(names, heights)
print(sortedNames2)

//Best solution in swift: 

