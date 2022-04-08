//
//  SplashAnimation.swift
//  TelegramLikeAnimations
//
//  Created by Sergey Shcheglov on 01.04.2022.
//

import SwiftUI

struct SplashAnimation: View {
    let StreamBlue = Color(#colorLiteral(red: 0, green: 0.368627451, blue: 1, alpha: 1))
    let sampleColor = Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1))
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.blue)
            
            Circle()
                .foregroundColor(.green)
        }
    }
}

struct SplashAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SplashAnimation()
    }
}
