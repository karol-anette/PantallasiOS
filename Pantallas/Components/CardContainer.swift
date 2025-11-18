//
//  CardContainer.swift
//  Aventuras con Nutri
//
//  Created by Victoria García on 21/09/25.
//

import SwiftUI

struct CardContainer<Content: View>: View {
    let content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: Spacing.s12) {
            content()
        }
        .padding(Spacing.s16)
        .background(AppColor.surface)
        .clipShape(RoundedRectangle(cornerRadius: AppShape.cornerM, style: .continuous))
        .shadow(color: .black.opacity(0.08), radius: 8, x: 0, y: 4)
    }
}
