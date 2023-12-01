//
//  ContentView.swift
//  SparrowCode_FirstTask
//
//  Created by Edmond Podlegaev on 01.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                ZStack(alignment: .bottom) {
                    ScrollView {
                        VStack {
                            ForEach(1 ... 100, id: \.self) { number in
                                Text("\(number)").font(.system(size: 24, design: .monospaced)).bold().foregroundStyle(.gray)
                            }
                            .frame(maxWidth: .infinity)
                        }
                        .padding(.bottom, 50)
                    }
                    .contentMargins(.bottom, 50, for: .scrollIndicators)
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
            .frame(height: 50)
            .background(Color.red.opacity(0.8))
    }
}

#Preview {
    ContentView()
}
