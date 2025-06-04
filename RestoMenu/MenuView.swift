//
//  ContentView.swift
//  RestoMenu
//
//  Created by Meenakshi Madhu on 6/4/25.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    
    var body: some View {
        
        List (menuItems) { item in
            
            HStack {
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)
                
                Text(item.name)
                    .bold()
                
                Spacer()
                
                Text("$" + (item.price))
                    
            }
            .listRowSeparator(.hidden)
            .listRowBackground(
                Color(.brown)
                    .opacity(0.1)
            )
            
        }
        .listStyle(.plain)
        .onAppear() {
            // fetch the data
            menuItems = dataService.getData()
        }
        
        
    }
}

#Preview {
    MenuView()
}
