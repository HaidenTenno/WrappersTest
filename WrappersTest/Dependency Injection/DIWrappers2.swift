//
//  DIWrappers1.swift
//  WrappersTest
//
//  Created by Петр Тартынских  on 05.07.2022.
//

import Foundation

// MARK: - Injectable

protocol Injectable {
    func serve()
}

// MARK: - Pump

class Pump: Injectable {
    
    private var count: Int = 0
    
    func serve() {
        print("Pumping... \(count)")
        count += 1
    }
}

// MARK: - ElectricHeater

class ElectricHeater: Injectable {
    
    private var count: Int = 0
    
    func serve() {
        print("Heating... \(count)")
        count += 1
    }
}

// MARK: - CoffeeMaker

class CoffeeMaker {
    
    @Injected2
    private var heater: ElectricHeater
    @Injected2
    private var pump: Pump
    
    func makeCoffee(){
        self.heater.serve()
        self.pump.serve()
        print("Making coffee...")
    }
}

// MARK: - Injected2

@propertyWrapper
struct Injected2<T: Injectable> {
    
    var component: T
    
    init() {
        self.component = Resolver2.resolve()
    }
    
    public var wrappedValue: T {
        get { return component }
        mutating set { component = newValue }
    }
}

// MARK: - Resolver2

class Resolver2 {
  
    private static let shared = Resolver2()
    private var factoryDict: [String: () -> Injectable] = [:]
    
    static func register<T: Injectable>(_ factory: @escaping @autoclosure () -> T) {
        shared.register(factory)
    }

    static func resolve<T: Injectable>() -> T {
        shared.resolve()
    }
    
    private func register<T: Injectable>(_ factory: @escaping () -> T) {
        let key = String(describing: T.self)
        factoryDict[key] = factory
    }

    private func resolve<T: Injectable>() -> T {
        let key = String(describing: T.self)
        let dependency = factoryDict[key]?() as? T
        
        precondition(dependency != nil, "No dependency found for \(key)! must register a dependency before resolve.")
        
        return dependency!
    }
}
