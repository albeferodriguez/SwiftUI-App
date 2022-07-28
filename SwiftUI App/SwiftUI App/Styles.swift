//
//  Styles.swift
//  SwiftUI App
//
//  Created by Alberto Fernández-Baillo Rodríguez on 18/7/22.
//

import SwiftUI

struct StrokeStyle: ViewModifier {
    var cornerRadios: CGFloat
    @Environment(\.colorScheme) var colorScheme
    func body(content: Content) -> some View {
        content.overlay(
            RoundedRectangle(cornerRadius: cornerRadios, style: .continuous)
                .stroke(.linearGradient(
                    colors: [
                        .white.opacity(colorScheme == .dark ? 0.6 : 0.3),
                        .black.opacity(colorScheme == .dark ? 0.3 : 0.1)
                    ], startPoint: .top, endPoint: .bottom))
                .blendMode(.overlay)
        )
    }
}

extension View {
    func strokeStyle(cornerRadius: CGFloat = 30) -> some View {
        modifier(StrokeStyle(cornerRadios: cornerRadius))
    }
}
