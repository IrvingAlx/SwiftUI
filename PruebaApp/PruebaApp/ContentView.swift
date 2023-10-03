//
//  ContentView.swift
//  PruebaApp
//
//  Created by Irving Alejandro Vega Lagunas on 02/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var saludo = "Hola SwiftUi"
    // State reacciona a cambios en la interfaz
    
    var body: some View {
        
        VStack{ // Ajusta Verticalmente
            HStack{ // Ajusta Horisontalmente
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                    .padding()
                Text("Hola soy Irving")
                    .padding()
                Image(systemName: "house.and.flag.fill")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .padding()
            }
            Text("Y estoy feliz de programar en SwiftUi")
                .padding()
            Text(saludo)
                .padding()
            Button("Presioanr") {
                self.saludo = "Im your father"
            }
        }
    }
}

#Preview {
    ContentView()
}
