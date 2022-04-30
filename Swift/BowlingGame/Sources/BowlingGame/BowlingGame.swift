import Foundation

public class BowlingGame {
    private var rolls: [Int] = .init(repeating: 0, count: 21)
    private var currentRoll = 0
    
    func roll(_ pins: Int) {
        rolls[currentRoll] = pins
        currentRoll += 1
    }
    
    func score() -> Int {
        var score = 0
        var frameIndex = 0
        for _ in (0..<10) {
            if isStrike(frameIndex)
            {
                score += 10 + strikeBonus(frameIndex)
                frameIndex += 1
            } else if isSpare(frameIndex) {
                score += 10 + spareBonus(frameIndex)
                frameIndex += 2
            } else {
                score += sumOfBallsInFrame(frameIndex)
                frameIndex += 2
            }
        }
        return score
    }
    
    private func isStrike(_ frameIndex: Int) -> Bool {
        return rolls[frameIndex] == 10
    }
    
    private func sumOfBallsInFrame(_ frameIndex: Int) -> Int {
        return rolls[frameIndex] + rolls[frameIndex + 1]
    }
    
    private func spareBonus(_ frameIndex: Int) -> Int {
        return rolls[frameIndex + 2]
    }
    
    private func strikeBonus(_ frameIndex: Int) -> Int {
        return rolls[frameIndex + 1] + rolls[frameIndex + 2]
    }
    
    
    private func isSpare(_ frameIndex: Int) -> Bool {
        return rolls[frameIndex] + rolls[frameIndex+1] == 10
    }
}
