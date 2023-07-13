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
