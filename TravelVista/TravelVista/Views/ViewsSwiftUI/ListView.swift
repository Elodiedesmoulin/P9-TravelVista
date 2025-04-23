//
//  ListView.swift
//  TravelVista
//
//  Created by Elo on 23/04/2025.
//


import SwiftUI

struct ListView: View {
    let countriesByContinent: [String: [Country]]

    var body: some View {
        NavigationStack {
            List {
                ForEach(countriesByContinent.keys.sorted(), id: \.self) { continent in
                    Section(header: Text(continent).font(.headline)) {
                        ForEach(countriesByContinent[continent] ?? [], id: \.name) { country in
                            NavigationLink {
                                Text("Detail for \(country.name)")
                            } label: {
                                HStack {
                                    Image(country.pictureName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 50, height: 50)
                                        .clipShape(Circle())

                                    VStack(alignment: .leading) {
                                        Text(country.name)
                                            .foregroundColor(.blue)
                                        Text(country.capital)
                                            .font(.subheadline)
                                            .foregroundColor(.secondary)
                                    }

                                    Spacer()

                                    HStack(spacing: 4) {
                                        Text("\(country.rate)")
                                            .foregroundColor(.black)
                                            .font(.subheadline)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.orange)
                                    }
                                }
                                .padding(.vertical, 4)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Liste de voyages")
        }
    }
}

#Preview {
    let exampleData: [String: [Country]] = [
        "Europe": [
            Country(name: "Norvège", capital: "Oslo", description: "Blabla", rate: 4, pictureName: "norvege", coordinates: Coordinates(latitude: 0, longitude: 0)),
            Country(name: "Italie", capital: "Rome", description: "Blabla", rate: 3, pictureName: "italie", coordinates: Coordinates(latitude: 0, longitude: 0))
        ]
    ]
    ListView(countriesByContinent: exampleData)
}
