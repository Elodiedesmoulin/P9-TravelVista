//
//  DetailView.swift
//  TravelVista
//
//  Created by Elo on 24/04/2025.
//


import SwiftUI

struct DetailView: UIViewControllerRepresentable {
    let country: Country

    func makeUIViewController(context: Context) -> DetailViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            fatalError("Impossible d’instancier DetailViewController")
        }

        viewController.country = country
        

        return viewController
    }

    func updateUIViewController(_ uiViewController: DetailViewController, context: Context) {
    }
}
