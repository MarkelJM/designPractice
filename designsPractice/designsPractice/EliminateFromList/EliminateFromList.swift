//
//  EliminateFromList.swift
//  designsPractice
//
//  Created by Markel Juaristi on 13/7/23.
//

import SwiftUI
/*
 
 Cuando un elemento se elimina, se aplica una transición de deslizamiento 
 */
struct EliminateFromList: View {
    @State private var data = ["Elemento 1", "Elemento 2", "Elemento 3", "Elemento 4"]

    var body: some View {
        NavigationView {
            List {
                ForEach(data, id: \.self) { item in
                    Text(item)
                        .transition(.slide)
                        .animation(.spring())
                }
                .onDelete(perform: removeItems)
                .moveDisabled(true)
            }
            .navigationBarItems(trailing: EditButton())
        }
    }

    func removeItems(at offsets: IndexSet) {
        withAnimation {
            data.remove(atOffsets: offsets)
        }
    }
}

struct AnimatedList_Previews: PreviewProvider {
    static var previews: some View {
        EliminateFromList()
    }
}
