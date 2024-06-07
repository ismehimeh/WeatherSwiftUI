//
//  TodayForecastView.swift
//  WeatherSwiftUI
//
//  Created by Sergei Vasilenko on 5/15/24.
//

import SwiftUI

struct TodayForecastView: View {

    var hourlyForecasts: [HourlyForecastViewModel]

    var body: some View {
        VStack {
            Text("Sunny conditions will continue for the rest of the day. Wind gusts are up to 17 km/h.")
                .padding(.leading, 12)
                .padding(.trailing, 12)
            Divider()
                .overlay(.white.opacity(0.7))
                .padding(.leading, 12)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(hourlyForecasts, id: \.self) { forecast in
                        VStack(spacing: 10) {
                            Text(forecast.topText).fontWeight(.semibold)
                            Image(systemName: forecast.icon.rawValue)
                                .symbolRenderingMode(.palette)
                                .foregroundPalette(forecast.icon.palette)
                                .font(.title2)
                                .frame(width: 30, height: 30)
                            Text(forecast.bottomText).font(.title2).fontWeight(.semibold)
                        }
                    }
                }
                .padding(.leading, 12)
                .padding(.trailing, 12)
                .frame(height: 100)
            }
        }
        .padding(.top, 10)
        .padding(.bottom, 10)
        .foregroundStyle(.white)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12))
        .background(.blue, in: RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    let items: [HourlyForecastViewModel] = [
        HourlyForecastViewModel(topText: "Now", icon: .sunMaxFill, bottomText: "24°"),
        HourlyForecastViewModel(topText: "19", icon: .sunMaxFill, bottomText: "25°"),
        HourlyForecastViewModel(topText: "19:56", icon: .sunset, bottomText: "Sunset"),
        HourlyForecastViewModel(topText: "21", icon: .cloudFill, bottomText: "27°"),
        HourlyForecastViewModel(topText: "22", icon: .cloudSunFill, bottomText: "28°"),
        HourlyForecastViewModel(topText: "23", icon: .cloudMoonFill, bottomText: "29°"),
        HourlyForecastViewModel(topText: "00", icon: .moonStarsFill, bottomText: "30°"),
    ]
    return TodayForecastView(hourlyForecasts: items)
}

// sun.max.fill
// sunrise.fill
// sunset.fill
// cloud.fill
// cloud.sun.fill
// cloud.moon.fill
// moon.stars.fill
