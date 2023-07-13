//
//  Movingeffect.swift
//  designsPractice
//
//  Created by Markel Juaristi on 13/7/23.
//
import SwiftUI
/*
 se mueve 200 puntos a la derecha cuando se toca. Inicialmente, la vista está en su posición original, pero cuando se toca, se anima para moverse a la derecha.
 */

struct MovingView: View {
    @State private var moveCircle = false

    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(.green)
            .offset(x: moveCircle ? 200 : 0)
            .animation(.spring())
            .onTapGesture {
                self.moveCircle.toggle()
            }
    }
}

struct MovingView_Previews: PreviewProvider {
    static var previews: some View {
        MovingView()
    }
}

