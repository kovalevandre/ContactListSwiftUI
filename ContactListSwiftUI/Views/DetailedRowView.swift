//
//  DetailedRowView.swift
//  ContactListSwiftUI
//
//  Created by Andrey Kovalev on 26.12.2023.
//

import SwiftUI

struct DetailedRowView: View {
    let image: String
    let info: String
    
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(info)
        }
    }
}

#Preview {
    DetailedRowView(image: "tray.fill", info: "information")
}
