//
//  ContentView.swift
//  TelegramLikeAnimations
//
//  Created by Sergey Shcheglov on 26.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: TypingAnimations()) {
                    Text("TypingAnimations")
                }
                NavigationLink(destination: EmojiView()) {
                    Text("Emoji View")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
