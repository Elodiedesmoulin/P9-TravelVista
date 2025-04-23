//
//  AppDelegate.swift
//  TravelVista
//
//  Created by Amandine Cousin on 13/12/2023.
//

import UIKit
import SwiftUI


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let regions: [Region] = Service().load("Source.json")

        let countriesByContinent = Dictionary(
            uniqueKeysWithValues: regions.map { ($0.name, $0.countries) }
        )

        let listView = ListView(countriesByContinent: countriesByContinent)
        let hostingController = UIHostingController(rootView: listView)

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = hostingController
        window?.makeKeyAndVisible()

        return true
    }
}

