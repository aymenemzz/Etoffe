//
//  ContentView.swift
//  Etoffe
//
//  Created by Aymene Mazouz on 01/06/2025.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    var body: some View {
        HomeView()
    }
}

#Preview(windowStyle: .automatic) {
    HomeView()
        .environment(AppModel())
}
