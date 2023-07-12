//
//  Shake.swift
//  designsPractice
//
//  Created by Markel Juaristi on 12/7/23.
//

import SwiftUI
/*
 Esta animación hace que el botón "vibre" o se sacuda de izquierda a derecha cuando se pulsa. Para lograr esto, se crea un efecto de geometría personalizado (Shake) que mueve la vista de izquierda a derecha (CGAffineTransform(translationX:y:)) en función del número de "sacudidas" (shakes). Cuando se pulsa el botón, se incrementa el número de "sacudidas", lo que activa la animación.
 */

struct ShakeAnimation: View {
    @State private var shakes: Double = 0

    var body: some View {
        Button(action: {
            withAnimation(.default) {
                self.shakes += 1
            }
        }) {
            Text("Vibrar")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .modifier(Shake(animatableData: CGFloat(shakes)))
    }
}

struct Shake: GeometryEffect {
    var amount: CGFloat = 10
    var shakesPerUnit = 3
    var animatableData: CGFloat

    func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(CGAffineTransform(translationX: amount * sin(animatableData * .pi * CGFloat(shakesPerUnit)), y: 0))
    }
}

struct Shake_Previews: PreviewProvider {
    static var previews: some View {
        ShakeAnimation()
    }
}
