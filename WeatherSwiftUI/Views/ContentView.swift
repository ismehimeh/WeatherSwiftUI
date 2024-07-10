//
//  ContentView.swift
//  WeatherSwiftUI
//
//  Created by Sergei Vasilenko on 5/13/24.
//

import SwiftUI

struct ContentView: View {
    var gradientColors: [Color] = [.gradientTop, .gradientBottom]
    let todayForecastModel: TodayForecastViewModel

    var body: some View {
        ScrollView {
            VStack {
                CommonView()
                TodayForecastView(model: todayForecastModel)
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
    @State var model = TodayForecastViewModel.defaultModel
    return ContentView(todayForecastModel: model)
}
