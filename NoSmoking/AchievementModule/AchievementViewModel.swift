//
//  AchievementViewModel.swift
//  NoSmoking
//
//  Created by Дмитрий Сельянов on 13.04.2024.
//

import SwiftUI

final class AchievementViewModel: ObservableObject {
    
    var selectedAchievement: Achievement? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
