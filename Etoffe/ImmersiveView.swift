//
//  ImmersiveView.swift
//  Etoffe
//
//  Created by Aymene Mazouz on 01/06/2025.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    /// Entry point for the Modula immersive experience.
    /// Wraps `ImmersiveModulaView` inside a container RealityView so we can
    /// load additional environment entities if needed.
    var body: some View {
        ImmersiveModulaView()
            .task {
                // Future setup for global environment (skybox, lighting...)
            }
    }
}

#Preview(immersionStyle: .mixed) {
    ImmersiveView()
        .environment(AppModel())
}
