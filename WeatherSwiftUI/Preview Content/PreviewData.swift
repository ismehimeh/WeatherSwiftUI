//
//  HourlyForecasts.swift
//  WeatherSwiftUI
//
//  Created by Sergei Vasilenko on 7/10/24.
//

import Foundation

extension TodayForecastViewModel {

    static var defaultModel: TodayForecastViewModel {
        let text = "Sunny conditions will continue for the rest of the day. Wind gusts are up to 17 km/h."
        return TodayForecastViewModel(text: text,
                               hourlyForecasts: HourlyForecastItem.defaultArray)
    }
}

extension HourlyForecastItem {

    static var defaultArray: [HourlyForecastItem] {
        [
            HourlyForecastItem(topText: "Now", icon: .sunMaxFill, bottomText: "24°"),
            HourlyForecastItem(topText: "19", icon: .sunMaxFill, bottomText: "25°"),
            HourlyForecastItem(topText: "19:56", icon: .sunset, bottomText: "Sunset"),
            HourlyForecastItem(topText: "21", icon: .cloudFill, bottomText: "27°"),
            HourlyForecastItem(topText: "22", icon: .cloudSunFill, bottomText: "28°"),
            HourlyForecastItem(topText: "23", icon: .cloudMoonFill, bottomText: "29°"),
            HourlyForecastItem(topText: "00", icon: .moonStarsFill, bottomText: "30°"),
        ]
    }
}
