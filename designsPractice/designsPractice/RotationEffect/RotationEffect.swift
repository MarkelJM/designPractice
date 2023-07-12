//
//  RotationEffect.swift
//  designsPractice
//
//  Created by Markel Juaristi on 12/7/23.
//
import SwiftUI
/*
 Cuando isRotating es verdadero, la imagen gira 360 grados.
 */

struct RotatingView: View {
    
    @State private var isRotating = false

    var body: some View {
        Image(systemName: "arrow.2.circlepath.circle")
            .resizable()
            .frame(width: 100, height: 100)
            .rotationEffect(.degrees(isRotating ? 360 : 0))
            .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
            .onAppear() {
                self.isRotating = true
            }
    }
}

struct RotatingView_Previews: PreviewProvider {
    static var previews: some View {
        RotatingView()
    }
}
