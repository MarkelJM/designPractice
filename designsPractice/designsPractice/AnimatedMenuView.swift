//
//  AnimatedMenuView.swift
//  designsPractice
//
//  Created by Markel Juaristi on 12/7/23.
//

import SwiftUI
/*
 Este código crea un botón que, cuando se presiona, se expande en un menú con dos opciones. La expansión y contracción del menú están animadas, por lo que parece que el menú se "despliega" cuando el botón es presionado.
 */

struct AnimatedMenu: View {
    @State private var expand = false
    
    var body: some View {
        VStack {
            HStack {
                if !expand {
                    Button(action: {
                        withAnimation(.spring()) {
                            self.expand.toggle()
                        }
                    }) {
                        Image(systemName: "list.bullet")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                } else {
                    Button(action: {
                        withAnimation(.spring()) {
                            self.expand.toggle()
                        }
                    }) {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
                
                Spacer()
            }
            .padding()
            
            if expand {
                Button(action: {}) {
                    Text("Opción 1")
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                .padding()
                
                Button(action: {}) {
                    Text("Opción 2")
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

struct AnimatedMenu_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedMenu()
    }
}

