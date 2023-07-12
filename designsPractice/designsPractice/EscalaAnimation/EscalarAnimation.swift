//
//  EscalarAnimation.swift
//  designsPractice
//
//  Created by Markel Juaristi on 12/7/23.
//

import SwiftUI
/*
 En este ejemplo, cuando el usuario realiza un gesto de "pellizco" sobre la imagen, el MagnificationGesture ajusta el valor de magnifyBy en tiempo real, lo que a su vez cambia el scaleEffect de la imagen y la amplía o reduce.
 */
struct Magnify: View {
    @GestureState private var magnifyBy = CGFloat(1.0)

    var body: some View {
        Image("myImage")
            .resizable()
            .scaleEffect(magnifyBy)
            .gesture(
                MagnificationGesture()
                    .updating($magnifyBy, body: { (value, state, transaction) in
                        state = value
                    })
            )
    }
}

struct Magnify_Previews: PreviewProvider {
    static var previews: some View {
        Magnify()
    }
}
