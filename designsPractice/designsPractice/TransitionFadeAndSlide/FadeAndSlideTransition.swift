//
//  FradeAndSlideTransition.swift
//  designsPractice
//
//  Created by Markel Juaristi on 13/7/23.
//

import SwiftUI

struct FadeAndSlideTransition: View {
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
                FadeAndSlideDetailView(showDetail: $showDetail)
                    .transition(.asymmetric(insertion: .opacity, removal: .move(edge: .trailing)))
            }
        }
    }
}

struct FadeAndSlideDetailView: View {
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

struct FadeAndSlideTransition_Previews: PreviewProvider {
    static var previews: some View {
        FadeAndSlideTransition()
    }
}


