//
//  AddElementInList.swift
//  designsPractice
//
//  Created by Markel Juaristi on 13/7/23.
//
import SwiftUI
/*
 Al presionar el botón "Agregar elemento", se añade un nuevo elemento a la lista. La adición del nuevo elemento está envuelta en una llamada a withAnimation, por lo que el nuevo elemento se anima a medida que entra en la lista. La animación es una transición de escala, de manera que parece que el nuevo elemento se expande hasta su tamaño completo a medida que se añade a la lista.
 */

struct AnimatedAdditionList: View {
    @State private var data = ["Elemento 1", "Elemento 2", "Elemento 3"]

    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(data, id: \.self) { item in
                        Text(item)
                            .transition(.scale(scale: 0.1))
                            .animation(.spring())
                    }
                }
                
                Button(action: {
                    withAnimation {
                        let newItem = "Elemento \(self.data.count + 1)"
                        self.data.append(newItem)
                    }
                }) {
                    Text("Agregar elemento")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("Lista animada")
        }
    }
}

struct AnimatedAdditionList_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedAdditionList()
    }
}
