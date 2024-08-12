//
//  CustomTabView.swift
//  NoSmoking
//
//  Created by Дмитрий Сельянов on 05.04.2024.
//

import SwiftUI

struct CustomTabView: View {
    
    @Binding var tabSelection: Int
    @Namespace private var animationNamespace
    
    let tabBarItems: [(image: String, title: String)] = [
        ("house", "Главная"),
        ("chart.bar.xaxis.ascending", "Статистика"),
        ("trophy.circle", "Достижения")
    ]
    
    var body: some View {
        ZStack {
            Capsule()
                .frame(height: 52)
                .foregroundStyle(Color.specialMenu)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            HStack(spacing: 90) {
                ForEach(0..<3) { index in
                    Button(action: {
                        tabSelection = index + 1
                    }, label: {
                        VStack {
                            Image(systemName: tabBarItems[index].image)
                                .resizable()
                                .scaledToFit()
                                .font(.largeTitle)

                        }
                        .frame(width: 30, height: 30)
                        .foregroundStyle(index + 1 == tabSelection ? Color.specialBlue : Color.specialLightBlue)
                        
                    })
                }
            }
            .frame(height: 52)
        }
        .padding(.horizontal)
    }
}

#Preview {
    CustomTabView(tabSelection: .constant(1))
}
