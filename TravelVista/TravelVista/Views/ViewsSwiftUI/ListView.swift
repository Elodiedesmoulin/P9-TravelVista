//
//  ListView.swift
//  TravelVista
//
//  Created by Elo on 23/04/2025.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var viewModel: CountryListViewModel

    var body: some View {
        NavigationStack {
                    VStack(spacing: 0) {
                        HStack {
                            Spacer()
                            Text("Liste de voyages")
                                .font(.title)
                                .bold()
                            Spacer()
                        }
                        .padding(.top, 16)

                List {
                    ForEach(viewModel.countriesByContinent.keys.sorted(), id: \.self) { continent in
                        Section(header: Text(continent)) {
                            ForEach(viewModel.countriesByContinent[continent] ?? [], id: \.name) { country in
                                NavigationLink(
                                    destination:
                                        DetailView(country: country)
                                            .navigationTitle(country.name)
                                            .navigationBarTitleDisplayMode(.inline)
                                ) {                                    HStack {
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
                                                .foregroundColor(.gray)
                                        }

                                        Spacer()

                                        HStack(spacing: 4) {
                                            Text("\(country.rate)")
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
                .listStyle(.plain)
            }
        }
    }
}

#Preview {
    let viewModel = CountryListViewModel()
    return ListView(viewModel: viewModel)
}
