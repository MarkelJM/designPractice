//
//  ScaleTransition.swift
//  designsPractice
//
//  Created by Markel Juaristi on 13/7/23.
//

import SwiftUI

struct ScaleTransition: View {
    @State private var isShowingDetails = false

    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    self.isShowingDetails.toggle()
                }
            }) {
                Text("Toque aquí")
            }

            if isShowingDetails {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 200)
                    .transition(.scale(scale: 0.1))
            }
        }
    }
}


struct ScaleTransition_Previews: PreviewProvider {
    static var previews: some View {
        ScaleTransition()
    }
}
