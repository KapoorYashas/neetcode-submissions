class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var visited = Set<Int>()
        for num in nums{
            if visited.contains(num){
                return true
            }
            visited.insert(num)
        }
        return false

    }
}
