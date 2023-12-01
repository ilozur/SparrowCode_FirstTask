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
                ScrollView {
                    ForEach(1 ... 100, id: \.self) { number in
                        Text("\(number)").font(.system(size: 24, design: .monospaced)).bold().foregroundStyle(.gray)
                    }
                }
                .tabItem {
                        Image(systemName: "star.fill")
                        Text("First")
                    }
            }
        }
    
    var redRectangle: some View {
        Rectangle()
            .frame(height: 50)
    }
}

#Preview {
    ContentView()
}
