//
//  ProgressBarView.swift
//  designsPractice
//
//  Created by Markel Juaristi on 12/7/23.
//
import SwiftUI
/*
 En este ejemplo, creamos una barra de progreso que se llena gradualmente al presionar un botón. Usamos ZStack para superponer dos rectángulos y ajustamos el ancho del rectángulo superior para reflejar el progreso. La animación se hace suave mediante el uso de .animation(.linear).
 */
struct ProgressBar: View {
    @State private var progress: CGFloat = 0.0
    
    var body: some View {
        VStack {
            Text("\(Int(progress * 100))%")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: 300, height: 20)
                    .cornerRadius(15)
                    .foregroundColor(.gray)
                
                Rectangle()
                    .frame(width: progress * 300, height: 20)
                    .cornerRadius(15)
                    .foregroundColor(.blue)
                    .animation(.linear)
            }
            
            Button("Descargar") {
                for _ in 1...100 {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        progress += 0.01
                    }
                }
            }
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}
