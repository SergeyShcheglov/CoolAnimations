//
//  isTypingAnimations.swift
//  TelegramLikeAnimations
//
//  Created by Sergey Shcheglov on 01.04.2022.
//

import SwiftUI

struct TypingAnimations: View {
    @State private var isTyping = false

    var body: some View {
        VStack {
            HStack {
                HStack {
                    Circle().frame(width: 5)
                        .opacity(isTyping ? 0.1 : 1)
                        .animation(.easeOut(duration: 0.4).repeatForever(autoreverses: true), value: isTyping)
                    
                    Circle().frame(width: 5)
                        .opacity(isTyping ? 0.1 : 1)
                        .animation(.easeInOut(duration: 0.4).repeatForever(autoreverses: true), value: isTyping)
                    
                    
                    Circle().frame(width: 5)
                        .opacity(isTyping ? 0.1 : 1)
                        .animation(.easeIn(duration: 0.4).repeatForever(autoreverses: true), value: isTyping)
                    
                }
                .foregroundColor(.blue)
                .onAppear {
                    isTyping.toggle()
                }
                Text("is typing").italic()
            }
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(height: 74)
                        .foregroundColor(.secondary)
                    
                    Image("")
                }
            }
        }
    }
}

