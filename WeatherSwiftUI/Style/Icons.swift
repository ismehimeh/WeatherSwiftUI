//
//  Icons.swift
//  WeatherSwiftUI
//
//  Created by Sergei Vasilenko on 5/31/24.
//

import SwiftUI

enum Icon: String {
    case sunMaxFill = "sun.max.fill"
    case sunset = "sunset.fill"
    case cloudFill = "cloud.fill"
    case cloudSunFill = "cloud.sun.fill"
    case cloudMoonFill = "cloud.moon.fill"
    case moonStarsFill = "moon.stars.fill"

    var palette: [Color] {
        switch self {
        case .sunMaxFill:
            return [.yellow]
        case .sunset:
            return [.white, .yellow]
        case .cloudFill:
            return [.white]
        case .cloudSunFill:
            return [.white, .yellow]
        case .cloudMoonFill:
            return [.white]
        case .moonStarsFill:
            return [.white]
        }
    }
}
