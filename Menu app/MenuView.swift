//
//  ContentView.swift
//  Menu app
//
//  Created by Reyes Nolasco, Justin A on 1/29/25.
//

import SwiftUI

struct MenuView: View {
    var menuItems: [MenuItem] = [MenuItem]()
    var dataService = DataServices()
    var body: some View {
        List(menuItems) { item in
            HStack{
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode:
                            .fit)
                    .cornerRadius(10)
                Text(item.name)
                    .font(.headline)
                    .padding(.leading, 10)
            Spacer()
                Text(item.price)
                    .font(.caption)
            }
            .listRowSeparator(.hidden)
            .listRowBackground(Color.brown
            .opacity(0.1))
        }
        .listStyle(.plain)
        .onAppear(){
            //call for the data
            menuItems = dataService.getData()
        }
        
    }
}

#Preview {
    MenuView()
}
