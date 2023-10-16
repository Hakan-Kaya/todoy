//
//  ContentView.swift
//  ToDoY
//
//  Created by Hakan Kaya on 16.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State var liste = ["a", "b", "c"]
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "plus")
            }

        }
        .padding()
        List {
            ForEach(liste, id:\.self) { item in
                Text(item)
            }
            .onDelete(perform: { indexSet in
                liste.remove(atOffsets: indexSet)
            })
        }
    }
}

#Preview {
    ContentView()
}
