//
//  ListSlidingOpacity.swift
//  designsPractice
//
//  Created by Markel Juaristi on 13/7/23.
//
import SwiftUI

/*
 las nuevas celdas entran o salen de la vista(nuevas, no al deslizar), deben deslizarse hacia dentro o hacia fuera mientras cambia su opacidad. La animación se aplica con .animation(.default).
 
 */

struct SlidingList: View {
    let data = Array(1...20).map { "Elemento \($0)" }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(data, id: \.self) { item in
                        Text(item)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            .transition(AnyTransition.slide.combined(with: .opacity))
                            .animation(.default)
                    }
                }
            }
            .navigationBarTitle("Lista deslizante", displayMode: .inline)
        }
    }
}

struct SlidingList_Previews: PreviewProvider {
    static var previews: some View {
        SlidingList()
    }
}
