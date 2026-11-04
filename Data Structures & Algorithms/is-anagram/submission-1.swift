class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        var charCount = [Character: Int]()

        for char in s{
            charCount[char, default: 0] += 1
        }
        for char in t{
            guard var count = charCount[char], count > 0 else{
                return false
            }
            charCount[char] = count - 1
        }
        return true

    }
}
