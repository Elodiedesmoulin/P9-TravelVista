//
//  TitleView.swift
//  TravelVista
//
//  Created by Elo on 23/04/2025.
//

import SwiftUI

struct TitleView: View {
    let country: Country

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(country.name)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)

                Text(country.capital)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Spacer()

            HStack(spacing: 4) {
                ForEach(0..<country.rate, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.orange)
                }
            }
        }
        .padding()
        .background(Color.white.opacity(0.85))
    }
}

#Preview {
    TitleView(country: Country(
        name: "Vietnam",
        capital: "Hanoi",
        description: "Lorem ipsum",
        rate: 4,
        pictureName: "vietnam",
        coordinates: Coordinates(latitude: 21.0285, longitude: 105.8542)
    ))
}
