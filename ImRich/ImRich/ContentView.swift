//
//  ContentView.swift
//  ImRich
//
//  Created by Irving Alejandro Vega Lagunas on 03/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                .ignoresSafeArea()
                
                VStack {
                    Image(systemName: "sparkle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.red)
                        .padding()
                    NavigationLink(destination: newView()){
                        Text("?")
                            .padding()
                            .font(.largeTitle)
                            .foregroundStyle(.black)
                            .frame(width: 50,height: 50, alignment: .center)
                            .background(.white)
                            .cornerRadius(150)
                    }
                }
            }
        }.navigationBarTitle("I am Rich")
        .padding()
    }
}

#Preview {
    ContentView()
}
