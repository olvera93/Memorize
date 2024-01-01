//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Gonzalo Olvera Monroy on 29/12/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
