//
//  NavigationView.swift
//  NoSmoking
//
//  Created by Дмитрий Сельянов on 05.04.2024.
//

import SwiftUI

struct NavigationView: View {
    @State private var tabSelected = 1
    
    var body: some View {
        TabView(selection: $tabSelected) {
            ContentView().tag(1)
            StatisticView().tag(2)
            AchievementGridView().tag(3)
        }
        .overlay(alignment: .bottom) {
            CustomTabView(tabSelection: $tabSelected)
        }

    }
}

#Preview {
    NavigationView()
}

