//
//  ContentView.swift
//  CalculadoraPropinaApp
//
//  Created by Irving Alejandro Vega Lagunas on 02/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var monto = "";
    @State private var porcentaje = 10.0;
    
    var totalPorPersona: Double{
        let total = Double (monto) ?? 0
        let propina = total * porcentaje / 100
        return total + propina
    }
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "dollarsign.circle")
                    .imageScale(.large)
                    .foregroundColor(.red)
                Text("Calculadora de propinas")
                    .font(.title2)
            }
            .padding(.bottom,20)
            
            TextField("Monto: ", text: $monto)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding()
            
            HStack{
                
                Text("Porcentaje de propina: \(porcentaje)%")
                    .padding(.bottom,20)
                
                Slider(value: $porcentaje, in : 0...50, step: 1)
                    .padding([.leading, .trailing],20)
               
            }
            
            Text("Total a pagar: $\(totalPorPersona, specifier:"%.2f")")
                .font(.title3)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .padding(.top,20)
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
