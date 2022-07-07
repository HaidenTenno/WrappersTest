//
//  SimpleWrappers.swift
//  WrappersTest
//
//  Created by Петр Тартынских  on 05.07.2022.
//

import Foundation

// MARK: - Simplest

@propertyWrapper
struct Simplest<T> {
    var wrappedValue: T
}

// MARK: - Uppercased

@propertyWrapper
struct Uppercased {
    
    private var value: String = ""
    
    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}

// MARK: - Reversed

@propertyWrapper
struct Reversed {
    
    private var value: String = ""
    
    var wrappedValue: String {
        get { value }
        set { value = String(newValue.reversed()) }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}

// MARK: - Abs

@propertyWrapper
struct Abs {
    
    private var value: Int = 0

    var wrappedValue: Int {
        get { value }
        set { value = abs(newValue) }
    }

    init(wrappedValue: Int) {
        self.wrappedValue = wrappedValue
    }
}
