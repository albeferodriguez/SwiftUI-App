//
//  Tab.swift
//  SwiftUI App
//
//  Created by Alberto Fernandez-Baillo Rodriguez on 28/7/22.
//

import SwiftUI

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
}

var tabItems = [
    TabItem(text: "Learn Now", icon: "house", tab: .home),
    TabItem(text: "Explore", icon: "magnifyingglass", tab: .explore),
    TabItem(text: "Notifications", icon: "bell", tab: .notification),
    TabItem(text: "Library", icon: "rectangle.stack", tab: .libraryType)
]

enum Tab: String {
    case home
    case explore
    case notification
    case libraryType
}
