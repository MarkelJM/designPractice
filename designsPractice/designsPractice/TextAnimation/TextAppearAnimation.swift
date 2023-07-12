//
//  TextAppearAnimation.swift
//  designsPractice
//
//  Created by Markel Juaristi on 12/7/23.
//

import SwiftUI
/*
 Aquí, la animación hace que el texto aparezca gradualmente en la vista cuando se carga por primera vez. Utilizamos la propiedad @State para seguir el estado visible del texto y cambiamos su opacidad para realizar la animación. La animación en sí misma se realiza con una duración de 2 segundos, proporcionando un efecto de desvanecimiento.
 */

struct TextAppear: View {
    @State private var isVisible = false
    
    var body: some View {
        Text("Hola Mundo!")
            .font(.largeTitle)
            .opacity(isVisible ? 1 : 0)
            .animation(.easeInOut(duration: 2))
            .onAppear {
                isVisible = true
            }
    }
}

struct TextAppear_Previews: PreviewProvider {
    static var previews: some View {
        TextAppear()
    }
}

