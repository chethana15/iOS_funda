let matrix = [[1,2,3],[4,5,6],[7,8,9]]
var finalMatrix = matrix
for rows in 0..<matrix.count{
    for columns in stride(from:matrix.count - 1, through:0, by:-1){
        finalMatrix[rows][columns] = matrix[columns][rows]
    }
}
print(finalMatrix)