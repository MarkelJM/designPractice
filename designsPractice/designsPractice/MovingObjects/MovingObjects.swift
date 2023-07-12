//
//  MovingObjects.swift
//  designsPractice
//
//  Created by Markel Juaristi on 12/7/23.
//
import SwiftUI

/*
 En este ejemplo, tenemos tres círculos que se mueven arriba y abajo en la pantalla. Usamos offset para mover los círculos, y repeatForever(autoreverses: true) para hacer que la animación se repita indefinidamente y se revierta después de cada ciclo. La animación comienza automáticamente cuando la vista aparece gracias a onAppear.
 */

struct MovingObjects: View {
    @State private var isAnimating = false
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                ForEach(0..<3) { _ in
                    Circle()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.blue)
                        .offset(y: isAnimating ? -500 : 0)
                }
            }
            .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
            .onAppear {
                isAnimating = true
            }
            
            Spacer()
        }
    }
}

struct MovingObjects_Previews: PreviewProvider {
    static var previews: some View {
        MovingObjects()
    }
}

