//
//  VarWithMemory.swift
//  WrappersTest
//
//  Created by Петр Тартынских  on 05.07.2022.
//

import Foundation

// MARK: - VarWithMemory

@propertyWrapper
struct VarWithMemory<T> {
    
    private var current: T
    private(set) var previousValues: [T] = []

    var wrappedValue: T {
        get { current }
        set {
            previousValues.append(current)
            current = newValue
        }
    }

    var projectedValue: VarWithMemory {
        get { self }
        set { self = newValue }
    }

    init(wrappedValue: T) {
        self.current = wrappedValue
    }

    mutating func clear() {
        previousValues.removeAll()
    }
}
