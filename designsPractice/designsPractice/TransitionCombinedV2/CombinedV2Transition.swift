//
//  CombinedV2Transition.swift
//  designsPractice
//
//  Created by Markel Juaristi on 13/7/23.
//

import SwiftUI

struct CombinedV2Transition: View {
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
                CombinedDetailView(showDetail: $showDetail)
                    .transition(AnyTransition.opacity.combined(with: .slide))
            }
        }
    }
}

struct CombinedDetailView: View {
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


struct CombinedV2Transition_Previews: PreviewProvider {
    static var previews: some View {
        CombinedV2Transition()
    }
}
