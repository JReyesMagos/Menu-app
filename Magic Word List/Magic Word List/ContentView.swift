//
//  ContentView.swift
//  Magic Word List
//
//  Created by Reyes Nolasco, Justin A on 2/4/25.
//

import SwiftUI
struct nameList: Identifiable{
    var id: UUID = UUID()
    var name: String
}

struct ContentView: View {
    @State var names: [nameList] = []
    @State var nameArray =
    ["hola","Como","Estas?","yo?","pues","bien"]
    @State var newName = ""
    
    func addName(){
        names.append(nameList(name: newName))
    }
    var body: some View {
        VStack {
            Text(newName)
            List(names){ randomName in
                Text(randomName.name)
            }
            Button("Add Name To Array") {
                let randomInt = Int.random(in:0...4)
                newName = nameArray[randomInt]
                addName()
            }
        }
     
    }
}

#Preview {
    ContentView()
}
