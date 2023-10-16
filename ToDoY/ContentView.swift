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
        Form {
            Section(header: Text("To Do").font(.largeTitle).bold()) {
                HStack {
                    Spacer()
                    Button {
                        liste.append("")
                    } label: {
                        Image(systemName: "plus")
                    }

                }
            }
            
            Section(header: Text("List")) {
                List {
                    ForEach(liste, id:\.self) { item in
                        Text(item)
                    }
                    .onDelete(perform: { indexSet in
                        liste.remove(atOffsets: indexSet)
                    })
                    .onTapGesture {
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
