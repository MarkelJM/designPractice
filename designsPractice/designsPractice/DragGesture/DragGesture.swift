//
//  DragGesture.swift
//  designsPractice
//
//  Created by Markel Juaristi on 10/7/23.
//

import SwiftUI

struct DragGesturing: View {
    // Creas un @State para el offset
    @State private var dragOffset = CGSize.zero

    var body: some View {
        Image("viaLactea")
            .resizable()
            .frame(width: 300, height: 500)
            .aspectRatio(contentMode: .fit)
            .cornerRadius(20)
            .shadow(color: .indigo, radius: 20)
            // Aplicas el offset a la vista
            .offset(dragOffset)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        withAnimation(.spring()) {
                            // Actualizas el offset cuando el usuario arrastra la vista
                            dragOffset = value.translation
                        }
                    }
                    .onEnded { _ in
                        withAnimation(.spring()) {
                            // Reseteas el offset cuando el usuario suelta la vista
                            dragOffset = CGSize.zero
                        }
                    }
            )
    }
}

struct DragGesture_Previews: PreviewProvider {
    static var previews: some View {
        DragGesturing()
    }
}

