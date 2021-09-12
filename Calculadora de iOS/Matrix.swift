//
//  Matrix.swift
//  Calculadora de iOS
//
//  Created by David Viloria Ortega on 6/09/21.
//

import Foundation
import UIKit
import SwiftUI


struct Matrix {
    static let  firstSection: [KeyboardButton] = [
        .init(title: "AC", textColor: .black, backgroundColor: customLighGray, isDoubleWeigth: false, type: .reset),
        .init(title: "+/-", textColor: .black, backgroundColor: customLighGray, isDoubleWeigth: false, type: .reset),
        .init(title: "%", textColor: .black, backgroundColor: customLighGray, isDoubleWeigth: false, type: .reset),
        .init(title: "/", textColor: .white, backgroundColor: customOrange, isDoubleWeigth: false, type: .operation(.divide)),
        .init(title: "7", textColor: .white, backgroundColor: customDarkGray, isDoubleWeigth: false, type: .number(7)),
        .init(title: "8", textColor: .white, backgroundColor: customDarkGray, isDoubleWeigth: false, type: .number(8)),
        .init(title: "9", textColor: .white, backgroundColor: customDarkGray, isDoubleWeigth: false, type: .number(9)),
        .init(title: "X", textColor: .white, backgroundColor: customOrange, isDoubleWeigth: false, type: .operation(.multiplicaction)),
        .init(title: "4", textColor: .white, backgroundColor: customDarkGray, isDoubleWeigth: false, type: .number(4)),
        .init(title: "5", textColor: .white, backgroundColor: customDarkGray, isDoubleWeigth: false, type: .number(5)),
        .init(title: "6", textColor: .white, backgroundColor: customDarkGray, isDoubleWeigth: false, type: .number(6)),
        .init(title: "-", textColor: .white, backgroundColor: customOrange, isDoubleWeigth: false, type: .operation(.subtract)),
        .init(title: "1", textColor: .white, backgroundColor: customDarkGray, isDoubleWeigth: false, type: .number(1)),
        .init(title: "2", textColor: .white, backgroundColor: customDarkGray, isDoubleWeigth: false, type: .number(2)),
        .init(title: "3", textColor: .white, backgroundColor: customDarkGray, isDoubleWeigth: false, type: .number(3)),
        .init(title: "+", textColor: .white, backgroundColor: customOrange, isDoubleWeigth: false, type: .operation(.sum))
        
    ]
    
    static let secondSection: [KeyboardButton] = [
        .init(title: "0", textColor: .white, backgroundColor: customDarkGray, isDoubleWeigth: true, type: .number(0)),
        .init(title: ",", textColor: .white, backgroundColor: customDarkGray, isDoubleWeigth: false, type: .reset),
        .init(title: "=", textColor: .white, backgroundColor: customOrange, isDoubleWeigth: false, type: .result)
    ]
    
    static let firstSectionGrid: (CGFloat) -> [GridItem] = { width in
        return Array(repeating: GridItem(.flexible(minimum: width), spacing: 0), count: 4)
    }
    
    static let secondSectionGrid: (CGFloat) -> [GridItem] = { width in
        return [
            GridItem(.flexible(minimum: width * 2),spacing: 0),
            GridItem(.flexible(minimum: width),spacing: 0),
            GridItem(.flexible(minimum: width),spacing: 0)
        ]
    }
}
