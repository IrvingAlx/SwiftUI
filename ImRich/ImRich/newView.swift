//
//  newView.swift
//  ImRich
//
//  Created by Irving Alejandro Vega Lagunas on 03/10/23.
//

import SwiftUI

struct newView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Text("I am Rich")
                    .padding()
                    .font(.title)
                    .foregroundStyle(.white)
                Text("I deserv it")
                    .padding()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                Text("I am good")
                    .padding()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                Text("healty & successful")
                    .padding()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    newView()
}
