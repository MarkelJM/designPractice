//
//  AsymetricTransition.swift
//  designsPractice
//
//  Created by Markel Juaristi on 13/7/23.
//

import SwiftUI

struct DegradadoTransition: View {
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
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}


struct AsymetricTransition_Previews: PreviewProvider {
    static var previews: some View {
        DegradadoTransition()
    }
}
