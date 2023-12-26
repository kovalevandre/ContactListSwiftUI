//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Andrey Kovalev on 26.12.2023.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getPersonList()
    
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            DetailedContactView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContentView()
}
