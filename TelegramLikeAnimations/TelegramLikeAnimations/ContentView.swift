//
//  ContentView.swift
//  TelegramLikeAnimations
//
//  Created by Sergey Shcheglov on 26.03.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isTyping = false
    @State private var isTyping2 = false
    @State private var isTyping3 = false

    
    var body: some View {
        HStack {
            HStack {
                Circle().frame(width: 5)
                    .opacity(isTyping ? 0.1 : 1)
                    .animation(.easeOut(duration: 1).repeatForever(autoreverses: true), value: isTyping)

                Circle().frame(width: 5)
                    .opacity(isTyping ? 0.1 : 1)
                    .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: isTyping)

                
                Circle().frame(width: 5)
                    .opacity(isTyping ? 0.1 : 1)
                    .animation(.easeIn(duration: 1).repeatForever(autoreverses: true), value: isTyping)

            }
            .foregroundColor(.blue)
            .onAppear {
                    isTyping.toggle()
            }
            Text("is typing").italic()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
