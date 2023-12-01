//
//  ContentView.swift
//  SparrowCode_FirstTask
//
//  Created by Edmond Podlegaev on 01.12.2023.
//

import SwiftUI

var rectangleHeight: CGFloat = 50

struct ContentView: View {
    var body: some View {
            TabView {
                ZStack(alignment: .bottom) {
                    ScrollView {
                        VStack {
                            ForEach(1 ... 100, id: \.self) { number in
                                Text("\(number)")
                                    .font(.system(size: 24, design: .monospaced))
                                    .foregroundStyle(.gray)
                            }
                            .frame(maxWidth: .infinity)
                        }
                        .padding(.bottom, rectangleHeight)
                    }
                    .contentMargins(.bottom, rectangleHeight, for: .scrollIndicators)
                    redRectangle
                }
                .tabItem {
                    Label("First", systemImage: "star.fill")
                }
            }
            .onAppear {
                let appearance = UITabBarAppearance()
                appearance.backgroundColor = UIColor(Color.white)
                UITabBar.appearance().standardAppearance = appearance
                UITabBar.appearance().scrollEdgeAppearance = appearance
            }
        }
    
    var redRectangle: some View {
        Rectangle()
            .fill(Color.clear)
            .frame(height: rectangleHeight)
            .background(Color.red.opacity(0.8))
    }
}

#Preview {
    ContentView()
}
