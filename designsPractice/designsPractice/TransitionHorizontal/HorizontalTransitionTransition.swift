//
//  CombinedTransition.swift
//  designsPractice
//
//  Created by Markel Juaristi on 13/7/23.
//

import SwiftUI

struct HorizontalTransition: View {
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
                    .fill(Color.green)
                    .frame(width: 200, height: 200)
                    .transition(AnyTransition.opacity.combined(with: .slide))
            }
        }
    }
}


struct CombinedTransition_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalTransition()
    }
}
