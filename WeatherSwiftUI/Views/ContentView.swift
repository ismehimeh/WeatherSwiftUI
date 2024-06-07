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
        HourlyForecastViewModel(topText: "Now", icon: .sunMaxFill, bottomText: "24°"),
        HourlyForecastViewModel(topText: "19", icon: .sunMaxFill, bottomText: "25°"),
        HourlyForecastViewModel(topText: "19:56", icon: .sunset, bottomText: "Sunset"),
        HourlyForecastViewModel(topText: "21", icon: .cloudFill, bottomText: "27°"),
        HourlyForecastViewModel(topText: "22", icon: .cloudSunFill, bottomText: "28°"),
        HourlyForecastViewModel(topText: "23", icon: .cloudMoonFill, bottomText: "29°"),
        HourlyForecastViewModel(topText: "00", icon: .moonStarsFill, bottomText: "30°"),
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
