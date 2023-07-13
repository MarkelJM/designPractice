//
//  SlideTransition.swift
//  designsPractice
//
//  Created by Markel Juaristi on 13/7/23.
//

import SwiftUI
/*
 pulsa encima y veras
 */
 struct SlideInTransition: View {
    
     /* @Namespace: En iOS 14 y superior, SwiftUI introdujo un nuevo concepto llamado matchedGeometryEffect que permite a los desarrolladores crear animaciones fluidas donde una vista puede transformarse en otra. Para hacer esto, necesitamos marcar el par de vistas que queremos animar con un Namespace.
      
      @Namespace private var namespace crea un namespace que puedes usar para marcar las vistas que deseas animar con matchedGeometryEffect. Al marcar las vistas de inicio y detalles con el mismo namespace, SwiftUI sabe que debe animar la transición entre estas dos vistas*/
    @Namespace private var namespace
    @State private var isDetailVisible = false

    var body: some View {
        VStack {
            if !isDetailVisible {
                HomeView(namespace: namespace)
                    .transition(.slide)
                    .animation(.default)
                    .onTapGesture {
                        withAnimation {
                            isDetailVisible.toggle()
                        }
                    }
            } else {
                DetailView(namespace: namespace)
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                    .animation(.default)
                    .onTapGesture {
                        withAnimation {
                            isDetailVisible.toggle()
                        }
                    }
            }
        }
    }
}

struct HomeView: View {
    var namespace: Namespace.ID

    var body: some View {
        VStack {
            Text("Home")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .matchedGeometryEffect(id: "Title", in: namespace)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue)
        .edgesIgnoringSafeArea(.all)
    }
}

struct DetailView: View {
    var namespace: Namespace.ID

    var body: some View {
        VStack {
            Text("Details")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .matchedGeometryEffect(id: "Title", in: namespace)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SlideInTransition_Previews: PreviewProvider {
    static var previews: some View {
        SlideInTransition()
    }
}
