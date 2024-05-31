//
//  ContentView.swift
//  WeatherSwiftUI
//
//  Created by Sergei Vasilenko on 5/13/24.
//

import SwiftUI

struct ContentView: View {
    var gradientColors: [Color] = [.gradientTop, .gradientBottom]
    let items: [HourlyForecastViewModel] = [
        HourlyForecastViewModel(topText: "Now", iconName: "sun.max.fill", bottomText: "24°"),
        HourlyForecastViewModel(topText: "19", iconName: "sun.max.fill", bottomText: "25°"),
        HourlyForecastViewModel(topText: "19:56", iconName: "sunset.fill", bottomText: "Sunset"),
        HourlyForecastViewModel(topText: "21", iconName: "cloud.fill", bottomText: "27°"),
        HourlyForecastViewModel(topText: "22", iconName: "cloud.sun.fill", bottomText: "28°"),
        HourlyForecastViewModel(topText: "23", iconName: "cloud.moon.fill", bottomText: "29°"),
        HourlyForecastViewModel(topText: "00", iconName: "moon.stars.fill", bottomText: "30°"),
    ]

    var body: some View {
        ScrollView {
            VStack {
                CommonView()
                TodayForecastView(hourlyForecasts: items)
            }
            .padding([.leading, .trailing], 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            LinearGradient(colors: gradientColors, 
                           startPoint: .top,
                           endPoint: .bottom).ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
