import Foundation

public struct GoodVsEvil {
    func evaluate(good: String, vsEvil evil: String) -> String {
        let goodMembers = good.split(separator: " ").map {Int($0)!}
        let evilMembers = evil.split(separator: " ").map {Int($0)!}
      let goodWorth = [1, 2, 3, 3, 4, 10]
      let evilWorth = [1, 2, 2, 2, 3, 5, 10]
        var totalGoodWorth: Int = 0
        zip(goodMembers, goodWorth).forEach{ count, worth in
            totalGoodWorth += count * worth
        }
        var totalEvilWorth: Int = 0
        zip(evilMembers, evilWorth).forEach{ count, worth in
            totalEvilWorth += count * worth
        }
        if totalGoodWorth > totalEvilWorth {
            return "Battle Result: Good triumphs over Evil"
        } else if totalGoodWorth < totalEvilWorth {
            return "Battle Result: Evil eradicates all trace of Good"
        } else {
            return "Battle Result: No victor on this battle field"
        }
        
    }
 
}
