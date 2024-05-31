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
                            Image(systemName: forecast.iconName)
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
        HourlyForecastViewModel(topText: "Now", iconName: "sun.max.fill", bottomText: "24°"),
        HourlyForecastViewModel(topText: "19", iconName: "sun.max.fill", bottomText: "25°"),
        HourlyForecastViewModel(topText: "19:56", iconName: "sunset.fill", bottomText: "Sunset"),
        HourlyForecastViewModel(topText: "21", iconName: "cloud.fill", bottomText: "27°"),
        HourlyForecastViewModel(topText: "22", iconName: "cloud.sun.fill", bottomText: "28°"),
        HourlyForecastViewModel(topText: "23", iconName: "cloud.moon.fill", bottomText: "29°"),
        HourlyForecastViewModel(topText: "00", iconName: "moon.stars.fill", bottomText: "30°"),
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
