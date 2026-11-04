class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty else { return "" }
        let strSorted = strs.sorted()
        let first = Array(strSorted[0])
        let last = Array(strSorted[strSorted.count - 1])        
        var count = 0
        for i in 0..<first.count{
            if first[i] == last[i]{
                count += 1
            }
            else{
                break
            }

        }
        return(String(first[..<count]))


    }
}
