//
//  WeatherSwiftUIApp.swift
//  WeatherSwiftUI
//
//  Created by Sergei Vasilenko on 5/13/24.
//

import SwiftUI

@main
struct WeatherSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(todayForecastModel: TodayForecastViewModel.defaultModel)
        }
    }
}
