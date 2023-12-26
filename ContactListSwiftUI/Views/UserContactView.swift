//
//  UserContactView.swift
//  ContactListSwiftUI
//
//  Created by Andrey Kovalev on 26.12.2023.
//

import SwiftUI

struct UserContactView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                Spacer()
            }.padding()
            
            DetailedRowView(image: "tray.fill", info: person.email)
            DetailedRowView(image: "phone.fill", info: person.phoneNumber)
        }
        .listStyle(.insetGrouped)
        .navigationTitle(person.fullName)
    }
}

#Preview {
    UserContactView(person: Person.getPersonList().first!)
}
