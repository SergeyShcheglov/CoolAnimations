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
                Circle().frame(width: 10)
                    .opacity(isTyping ? 1 : 0)
                
                Circle().frame(width: 10)
                    .opacity(isTyping2 ? 1 : 0)
                
                Circle().frame(width: 10)
                    .opacity(isTyping3 ? 1 : 0)
            }
            .foregroundColor(.blue)
            .onAppear {
                withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                    isTyping.toggle()
                }
                withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false).delay(0.3)) {
                    isTyping2.toggle()
                }
                withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false).delay(0.6)) {
                    isTyping3.toggle()
                }
            }
        Text("is typing")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
