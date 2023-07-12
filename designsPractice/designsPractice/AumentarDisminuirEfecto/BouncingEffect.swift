//
//  BouncingEffect.swift
//  designsPractice
//
//  Created by Markel Juaristi on 12/7/23.
//

import SwiftUI
/*
 Cuando bounce es verdadero, la vista se escala al doble de su tamaño original. Cuando bounce es falso, vuelve a su tamaño original.

 La animación utiliza .interpolatingSpring(stiffness: 100, damping: 10), que crea un efecto de "rebote" al cambiar el tamaño de la vista.
 */
struct BouncingView: View {
    @State private var bounce = false

    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(.green)
            .scaleEffect(bounce ? 2 : 1)
            .animation(.interpolatingSpring(stiffness: 100, damping: 10))
            .onAppear() {
                self.bounce.toggle()
            }
    }
}

struct BouncingView_Previews: PreviewProvider {
    static var previews: some View {
        BouncingView()
    }
}
