//
//  ContentView.swift
//  ToDoY
//
//  Created by Hakan Kaya on 16.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State var liste = ["a", "b", "c"]
    @State var newEntry = ""
    @State var addButtonClicked = false
    
    var body: some View {
        Form {
            Section(header: Text("To Do").font(.largeTitle).bold()) {
                HStack {
                    Spacer()
                    Button {
                        addButtonClicked.toggle()
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
                }
                if addButtonClicked {
                    TextField("", text: $newEntry)
                        .onSubmit {
                            liste.append(newEntry)
                            newEntry = ""
                            addButtonClicked.toggle()
                        }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
