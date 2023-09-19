//
//  TabView.swift
//  Drawing
//
//  Created by Анна Перехрест  on 2023/09/19.
//

import SwiftUI

struct AppTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FlowerView()
                .tabItem {
                    Text("Simple")
                    Image(systemName: "1.circle.fill")
                }
                .tag(0)
            SpirografView()
                .tabItem {
                    Text("Interesting")
                    Image(systemName: "2.circle.fill")
                }
                .tag(1)
        }
        .accentColor(.red)
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
