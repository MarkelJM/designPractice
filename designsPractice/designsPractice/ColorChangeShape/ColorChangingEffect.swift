//
//  ColorChangingEffect.swift
//  designsPractice
//
//  Created by Markel Juaristi on 13/7/23.
//
import SwiftUI
/*
 ambia de color cuando se toca. La vista comienza como roja, pero cuando se toca, la vista se anima para cambiar al color azul.
 */
struct ColorChangingView: View {
    @State private var changeColor = false

    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(changeColor ? .blue : .red)
            .animation(.default)
            .onTapGesture {
                self.changeColor.toggle()
            }
    }
}

struct ColorChangingView_Previews: PreviewProvider {
    static var previews: some View {
        ColorChangingView()
    }
}
