//
//  FactoryContainer.swift
//  WrappersTest
//
//  Created by Петр Тартынских  on 07.07.2022.
//

import Foundation
import Factory

extension Container {
    static let worker = Factory { Policeman() as Worker }
//    static let worker = Factory(scope: .singleton) { Policeman() as Worker }
}
