//
//  ScaleV2Transition.swift
//  designsPractice
//
//  Created by Markel Juaristi on 13/7/23.
//

import SwiftUI

struct ScaleV2Transition: View {
    @State private var showDetail = false

    var body: some View {
        VStack {
            if !showDetail {
                Button("Go to Detail") {
                    withAnimation {
                        showDetail = true
                    }
                }
            }

            if showDetail {
                ScaledDetailView(showDetail: $showDetail)
                    .transition(.scale)
            }
        }
    }
}

struct ScaledDetailView: View {
    @Binding var showDetail: Bool

    var body: some View {
        VStack {
            Button("Back") {
                withAnimation {
                    showDetail = false
                }
            }
        }
    }
}


struct ScaleV2Transition_Previews: PreviewProvider {
    static var previews: some View {
        ScaleV2Transition()
    }
}
