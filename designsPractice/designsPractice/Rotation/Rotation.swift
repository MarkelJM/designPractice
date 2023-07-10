//
//  Rotation.swift
//  designsPractice
//
//  Created by Markel Juaristi on 10/7/23.
//

import SwiftUI

struct Rotation: View {
    /* no veo animacion*/
    @State private var angle : Angle = Angle(degrees: 0)
    var body: some View {
        Image("cyclist")
            .resizable()
            .frame(width: 200, height: 200)
            .rotationEffect(angle)
            .gesture(
                RotationGesture()
                    .onChanged{ value  in
                        withAnimation(.spring()){
                            angle = value
                        }
                    }
                    .onEnded({ _ in
                        withAnimation(.spring()) {
                            angle = Angle(degrees: 0)
                        }
                    })
            )
    }
}

struct Rotation_Previews: PreviewProvider {
    static var previews: some View {
        Rotation()
    }
}
