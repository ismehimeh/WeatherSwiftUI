//
//  TodayForecastView.swift
//  WeatherSwiftUI
//
//  Created by Sergei Vasilenko on 5/15/24.
//

import SwiftUI

struct TodayForecastView: View {
    var body: some View {
        VStack {
            Text("Sunny conditions will continue for the rest of the day. Wind gusts are up to 17 km/h.")
            Divider()
                .overlay(.white.opacity(0.7))
        }
        .padding(.init(top: 12, leading: 16, bottom: 12, trailing: 16))
        .foregroundStyle(.white)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12))
        .background(.blue, in: RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    TodayForecastView()
}
