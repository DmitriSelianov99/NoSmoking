//
//  Achievement.swift
//  NoSmoking
//
//  Created by Дмитрий Сельянов on 13.04.2024.
//

import SwiftUI

struct AchievementGridView: View {
    
    @StateObject var viewModel = AchievementViewModel()
    
    private let columns: [GridItem] = [GridItem(.flexible()),
                                       GridItem(.flexible()),
                                       GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    ForEach(MockData.achievements) { achievement in
                        AchievementTitleView(achievement: achievement)
                            .onTapGesture {
                                viewModel.selectedAchievement = achievement
                            }
                    }
                })
            }
            .navigationTitle("🏆 Achievements")
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                AchievementDetailView(achievement: viewModel.selectedAchievement!, isShowingDetailedView: $viewModel.isShowingDetailView)
                    .presentationDetents([.fraction(0.7)])
                    .presentationDragIndicator(.visible)
            })
        }
    }
}

#Preview {
    AchievementGridView()
}

struct AchievementTitleView: View {
    
    @AppStorage("days") var noSmokingDays: Int?
    let achievement: Achievement
    
    var body: some View {
        VStack {
            Image(systemName: achievement.imageName)
                .resizable()
//                .renderingMode(noSmokingDays ?? 0 >= achievement.achieveDay ? .original : .template)
                .foregroundStyle(noSmokingDays ?? 0 >= achievement.achieveDay ? .yellow : .gray)
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text(achievement.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding(.top, 20)
    }
    
}
