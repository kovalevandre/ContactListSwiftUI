//
//  UserInfo.swift
//  ContactListSwiftUI
//
//  Created by Andrey Kovalev on 26.12.2023.
//

import SwiftUI

struct Person: Hashable {
    
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPersonList() -> [Person] {
        
        let dataManager = DataManager.shared
        var persons: [Person] = []
        
        let firstName = dataManager.firstName.shuffled()
        let lastName = dataManager.lastName.shuffled()
        let email = dataManager.email.shuffled()
        let phoneNumber = dataManager.phoneNumber.shuffled()
        
        let minValue = min(
            firstName.count,
            lastName.count,
            email.count,
            phoneNumber.count
        )
        
        for index in 0..<minValue {
            let person = Person(
                firstName: firstName[index],
                lastName: lastName[index],
                email: email[index],
                phoneNumber: phoneNumber[index]
            )
            persons.append(person)
        }
        return persons
    }
}

