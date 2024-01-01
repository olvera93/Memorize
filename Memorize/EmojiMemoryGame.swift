//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Gonzalo Olvera Monroy on 31/12/23.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    
    private static let emojis = ["👻" , "🎃", "🕷️", "😈", "😈"]
        
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(
            numberOfPairsOfCards: 4) { pairIndex in
                if emojis.indices.contains(pairIndex) {
                    return emojis[pairIndex]
                } else {
                    return "⁉️"
                }
        }
    }
    
    @Published private var model = createMemoryGame()

    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()
        objectWillChange.send()
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
