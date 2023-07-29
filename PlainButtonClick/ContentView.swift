//
//  ContentView.swift
//  PlainButtonClick
//
//  Created by D. Prameswara on 29/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    var body: some View {
        Button {
            show.toggle()
        } label: {
            HStack {
                Image(systemName: "plus")
                Text("Add data")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .contentShape(RoundedRectangle(cornerRadius: 10.0))
        }
        .buttonStyle(.plain)
        .background {
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(.primary, lineWidth: 0.2)
        }
        .padding()
        .sheet(isPresented: $show){
            Text("Pop Window")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
