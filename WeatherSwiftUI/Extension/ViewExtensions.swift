//
//  ViewExtensions.swift
//  WeatherSwiftUI
//
//  Created by Sergei Vasilenko on 5/31/24.
//

import SwiftUI

extension View {

    @ViewBuilder
    func foregroundPalette(_ color: [Color]) -> some View {
        switch color.count {
        case 1:
            foregroundStyle(color[0])
        case 2:
            foregroundStyle(color[0], color[1])
        case 3:
            foregroundStyle(color[0], color[1], color[3])
        default:
            self
        }
    }
}
