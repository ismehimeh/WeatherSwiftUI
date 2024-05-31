//
//  CommonView.swift
//  WeatherSwiftUI
//
//  Created by Sergei Vasilenko on 5/13/24.
//

import SwiftUI

struct CommonView: View {
    var body: some View {
        VStack {
            Text("My Location")
                .font(.largeTitle)
            Text("Antalya".uppercased())
                .bold()
                .font(.footnote)
            Text("24°")
                .font(.system(size: 160))
                .fontWeight(.thin)
                .padding(.leading, 30)
            Text("Mostly Sunny")
                .font(.title2)
            Text("H:80° L:65°")
                .font(.title2)
        }
        .foregroundColor(.white)
    }
}

#Preview {
    CommonView()
        .background(Color.blue)
}
