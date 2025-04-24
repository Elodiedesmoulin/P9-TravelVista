//
//  DetailView.swift
//  TravelVista
//
//  Created by Elo on 24/04/2025.
//


import SwiftUI

struct DetailView: UIViewControllerRepresentable {
    let country: Country

    // 👇 Note bien le retour : UIViewController (et plus DetailViewController)
    func makeUIViewController(context: Context) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        guard let detailVC = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            fatalError("Impossible d’instancier DetailViewController")
        }

        detailVC.country = country
        detailVC.title = country.name

        let navController = UINavigationController(rootViewController: detailVC)
        return navController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // Rien à faire ici
    }
}

