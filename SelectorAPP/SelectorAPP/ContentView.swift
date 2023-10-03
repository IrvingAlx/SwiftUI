//
//  ContentView.swift
//  SelectorAPP
//
//  Created by Irving Alejandro Vega Lagunas on 02/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var opcionSeleccionada = 0
    @State private var selectedDate = Date()
    
    let opciones = ["Opcion 1","Opcion 2", "Opcion 3"]
    
    private var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        return formatter
    }
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "hand.point.up.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Picker")
            }
            Picker(selection: $opcionSeleccionada, label: Text("Seleciona una opcion")){
                ForEach(0 ..< opciones.count){
                    Text(self.opciones[$0]).tag($0)
                }
            }
            .padding()
            .pickerStyle(SegmentedPickerStyle())
            //.pickerStyle(WheelPickerStyle())
            //.pickerStyle(MenuPickerStyle())

            
            Text("Opcion selecionada: \(opciones[opcionSeleccionada])")
                .padding()
            HStack{
                Image(systemName: "clock.fill")
                    .imageScale(.large)
                    .foregroundColor(.red)
                Text("DatePicker")
            }
            
            DatePicker("Selecciona una fecha",selection: $selectedDate,displayedComponents: .date)
                .datePickerStyle(WheelDatePickerStyle())
                .padding()
            Text("Fecha seleccionada: \(selectedDate, formatter:dateFormatter)")
                .padding()

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
