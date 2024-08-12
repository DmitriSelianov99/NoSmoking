//
//  ContentView.swift
//  NoSmoking
//
//  Created by Дмитрий Сельянов on 26.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("days") var noSmokingDays: Int = 0
    //@State private var day = 10000
    
    
    var body: some View {
        ZStack() {
            Color.specialBackground.ignoresSafeArea()
            
            VStack(spacing: 0) {
                VStack(spacing: 62) {
                    Text("НЕ КУРЮ")
                        .font(.system(size: 32, weight: .bold, design: .default))
                    Text("\(noSmokingDays)")
                        .font(.system(size: 96, weight: .bold, design: .default))
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    setDay()
                    
                }
                .padding(.top, 122)

                Spacer()
                
                HStack(spacing: 50) {
                    
                    Button(action: {
                        noSmokingDays = 0
                    }, label: {
                        ButtonText(userText: "КУРЮ", color: .specialRed)
                    })
                    
                    Button(action: {
                        noSmokingDays += 1
                    }, label: {
                        ButtonText(userText: "НЕ КУРЮ", color: .specialGreen)
                    })
                    
                }
                .padding(.bottom, 100)
            }
            
        }
    }
}

extension ContentView {
    private func setDay() -> Text {
        if noSmokingDays % 10 == 1 && noSmokingDays != 11 {
            return Text("ДЕНЬ").font(.system(size: 32, weight: .bold, design: .default))
        } else if (noSmokingDays % 10 == 2 && noSmokingDays != 12) || (noSmokingDays % 10 == 3 && noSmokingDays != 13) || (noSmokingDays % 10 == 4 && noSmokingDays != 14) {
            return Text("ДНЯ").font(.system(size: 32, weight: .bold, design: .default))
        } else {
            return Text("ДНЕЙ").font(.system(size: 32, weight: .bold, design: .default))
        }
    }
}

#Preview {
    ContentView()
}

struct ButtonText: View {
    var userText: String
    var color: Color
    
    var body: some View {
        Text(userText)
            .foregroundStyle(Color.white)
            .frame(width: 135, height: 53, alignment: .center)
            .font(.system(size: 18, weight: .bold, design: .default))
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    
}

