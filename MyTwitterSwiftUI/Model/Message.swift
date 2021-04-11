//
//  Message.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk on 4/10/21.
//

import SwiftUI

struct MockMessage: Identifiable {
    let id: Int
    let imageName: String
    let messageText: String
    let currentUser: Bool
}

let MOCK_MESSAGES: [MockMessage] = [
    .init(id: 0, imageName: "spiderman", messageText: "spiderman says", currentUser: false),
    .init(id: 1, imageName: "batman", messageText: "batman says", currentUser: true),
    .init(id: 2, imageName: "spiderman", messageText: "spiderman says more", currentUser: false),
    .init(id: 3, imageName: "spiderman", messageText: "spiderman says more and more", currentUser: false),
]
