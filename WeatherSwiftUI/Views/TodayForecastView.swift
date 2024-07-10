//
//  TodayForecastView.swift
//  WeatherSwiftUI
//
//  Created by Sergei Vasilenko on 5/15/24.
//

import SwiftUI

struct TodayForecastView: View {

    var model: TodayForecastViewModel

    var body: some View {
        VStack {
            Text(model.text)
                .padding([.leading, .trailing], 12)
            Divider()
                .overlay(.white.opacity(0.7))
                .padding(.leading, 12)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(model.hourlyForecasts, id: \.self) { forecast in
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
                .padding([.leading, .trailing], 12)
                .frame(height: 100)
            }
        }
        .padding([.top, .bottom], 10)
        .foregroundStyle(.white)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12))
        .background(.blue, in: RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    @State var model = TodayForecastViewModel.defaultModel
    return TodayForecastView(model: model)
}
