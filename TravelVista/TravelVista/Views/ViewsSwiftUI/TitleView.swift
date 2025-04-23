//
//  TitleView.swift
//  TravelVista
//
//  Created by Elo on 23/04/2025.
//

import SwiftUI

struct TitleView: View {
    let countryName: String
    let capital: String
    let rating: Int

    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 4) {
                Text(countryName)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)

                Text(capital)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }

            Spacer()

            HStack(spacing: 2) {
                ForEach(0..<5) { index in
                    Image(systemName: index < rating ? "star.fill" : "star")
                        .foregroundColor(.orange)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    TitleView(countryName: "Norvège", capital: "Oslo", rating: 4)
}
