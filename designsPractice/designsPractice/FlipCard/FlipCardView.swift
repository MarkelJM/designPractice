//
//  FlipCardView.swift
//  designsPractice
//
//  Created by Markel Juaristi on 12/7/23.
//

import SwiftUI
/*
 Este código crea una animación que intercambia entre un Rectangle y un Circle cuando haces clic en él. La magia ocurre gracias al método matchedGeometryEffect(id:in:), que sincroniza las posiciones y las formas de las dos vistas durante la animación, haciendo que parezca que una vista se transforma en la otra.
 */
 struct FlipCard: View {
    @Namespace private var animation
    @State private var isFlipped = false

    var body: some View {
        VStack {
            if isFlipped {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 200)
                    .matchedGeometryEffect(id: "shape", in: animation)
            } else {
                Circle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .matchedGeometryEffect(id: "shape", in: animation)
            }
        }
        .onTapGesture {
            withAnimation {
                isFlipped.toggle()
            }
        }
    }
}

struct FlipCard_Previews: PreviewProvider {
    static var previews: some View {
        FlipCard()
    }
}

