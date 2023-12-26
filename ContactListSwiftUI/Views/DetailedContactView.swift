//
//  DetailedContactView.swift
//  ContactListSwiftUI
//
//  Created by Andrey Kovalev on 26.12.2023.
//

import SwiftUI

struct DetailedContactView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            VStack {
                List(persons, id: \.self) { person in
                    Section(header: Text(person.fullName)) {
                        DetailedRowView(image: "tray.fill", info: person.email)
                        DetailedRowView(image: "phone.fill", info: person.phoneNumber)
                    }
                }
                .listStyle(.insetGrouped)
                .navigationTitle("Contact List")
            }
        }
    }
}

#Preview {
    DetailedContactView(persons: Person.getPersonList())
}

