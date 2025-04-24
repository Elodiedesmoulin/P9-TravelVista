//
//  CountryListViewModel.swift
//  TravelVista
//
//  Created by Elo on 24/04/2025.
//

import Foundation

class CountryListViewModel: ObservableObject {
    @Published var countriesByContinent: [String: [Country]] = [:]

    init() {
        loadData()
    }

    func loadData() {
        let regions: [Region] = Service().load("Source.json")
        countriesByContinent = Dictionary(uniqueKeysWithValues: regions.map { ($0.name, $0.countries) })
    }
}
