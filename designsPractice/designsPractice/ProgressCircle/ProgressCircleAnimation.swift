//
//  ProgressCircleAnimation.swift
//  designsPractice
//
//  Created by Markel Juaristi on 12/7/23.
//
import SwiftUI
/*
 la animación hace que la porción azul del círculo se llene hasta el 75% del total. Esta animación comienza automáticamente cuando la vista aparece gracias a onAppear.
 */
struct ProgressCircle: View {
    @State private var progress: CGFloat = 0.0

    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.3)
                .foregroundColor(.blue)

            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .foregroundColor(.blue)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear(duration: 1.0))
                .onAppear {
                    self.progress = 0.75
                }
        }
        .frame(width: 150, height: 150)
    }
}

struct ProgressCircle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircle()
    }
}
