//
//  AchievementDetailView.swift
//  NoSmoking
//
//  Created by Дмитрий Сельянов on 13.04.2024.
//

import SwiftUI

struct AchievementDetailView: View {
    
    var achievement: Achievement
    @Binding var isShowingDetailedView: Bool
    
    var body: some View {
        VStack(spacing: 10.0) {
            Image(systemName: achievement.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundStyle(.yellow)
            
            Text(achievement.predescription)
                .multilineTextAlignment(.center)
                .lineSpacing(10)
                .font(.title)
                .bold()
            
            Text(achievement.description)
                .multilineTextAlignment(.center)
                .lineSpacing(10)
                .font(.title2)

        }
        .padding(.horizontal)
    }
}

#Preview {
    AchievementDetailView(achievement: MockData.achievements[0], isShowingDetailedView: .constant(true))
}
