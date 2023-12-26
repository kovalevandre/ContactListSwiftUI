//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Andrey Kovalev on 26.12.2023.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons, id: \.self) { person in
                NavigationLink(destination: UserContactView(person: person)) {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContactsView(persons: Person.getPersonList())
}
