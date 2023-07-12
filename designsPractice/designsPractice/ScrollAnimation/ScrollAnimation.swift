//
//  ScrollAnimation.swift
//  designsPractice
//
//  Created by Markel Juaristi on 12/7/23.
//
import SwiftUI
/*
 En este ejemplo, cada vez que un nuevo elemento entra en la vista, se anima la opacidad y la escala del elemento para dar la impresión de que está apareciendo desde la nada.
 */
struct ScrollAnimation: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(0..<20) { num in
                    Text("Elemento \(num)")
                        .font(.title)
                        .frame(height: 200)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(color: .gray, radius: 4, x: 0, y: 4)
                        .opacity(Double(num) * 0.05)
                        .scaleEffect(1 - CGFloat(num) * 0.05)
                        .animation(.easeInOut)
                }
            }
            .padding()
        }
    }
}

struct ScrollAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ScrollAnimation()
    }
}

