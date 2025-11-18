//
//  MemoryCardView.swift
//  Aventuras con Nutri
//
//  Created by Victoria García on 21/09/25.
//

import SwiftUI

struct MemoryCardView: View {
    let width: CGFloat

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .fill(Color.white.opacity(0.92))

            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .stroke(Color.black.opacity(0.75), lineWidth: 3)

            Image("nutri_memory")
                .resizable()
                .scaledToFit()
                .padding(12)
        }
        .frame(width: width)
        .aspectRatio(0.68, contentMode: .fit)
        .shadow(color: .black.opacity(0.12), radius: 4, y: 2)
    }
}
