import UIKit


func longestIncreasingSubsequence(_ arr : [Int]) -> Int {
    guard arr.count > 1 else {
        return 1
    }
    
    var lis = Array(repeating: 1, count: arr.count)
    
    var i = 1
    var j = 0
    
    while i < arr.count {
        while j < i {
            if arr[i] > arr[j] {
                lis[i] = max(lis[i], lis[j] + 1)
            }
            j += 1
        }
        j = 0
        i += 1
    }
    
    return lis.max() ?? 1
}

print(longestIncreasingSubsequence([10,22,9,33,21,50,41,60]))

