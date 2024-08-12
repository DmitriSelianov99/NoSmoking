//
//  Achievement.swift
//  NoSmoking
//
//  Created by Дмитрий Сельянов on 13.04.2024.
//

import Foundation

struct Achievement: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let predescription: String
    let description: String
    let achieveDay: Int
}

struct MockData {
    static let achievements: [Achievement] = [
        Achievement(name: "First step", imageName: "shoe.fill", predescription: "Не курить один день.", description: "Главное, сделать первый шаг", achieveDay: 1),
        Achievement(name: "The Moon", imageName: "moon.fill", predescription: "Не курить неделю.", description: "Вы на верном пути, не сдавайтесь!", achieveDay: 7),
        Achievement(name: "First step", imageName: "3.circle", predescription: "Не курить 3 дня.", description: "Три - не один! Терпим!", achieveDay: 3),
        
    ]
}
