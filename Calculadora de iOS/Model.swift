//
//  Model.swift
//  Calculadora de iOS
//
//  Created by David Viloria Ortega on 6/09/21.
//

import Foundation
import SwiftUI


struct KeyboardButton: Hashable {
    let title: String
    let textColor: Color
    let backgroundColor: Color
    let isDoubleWeigth: Bool
    let type: ButtonType
}

enum ButtonType: Hashable {
    case number(Int)
    case operation(OperationType)
    case result
    case reset
    
}

enum OperationType: Hashable {
    case sum
    case subtract
    case multiplicaction
    case divide
    
}
