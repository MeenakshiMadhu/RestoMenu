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
            
            MenuListRow(item: item)
            
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
