//
//  DIWrappers2.swift
//  WrappersTest
//
//  Created by Петр Тартынских  on 05.07.2022.
//

import Foundation

// MARK: - Сomponent

protocol Miner {
    func mine()
}

// MARK: - Pump

class BTCMiner: Miner {
    
    private var count: Int = 0
    
    func mine() {
        print("Mining BTC... \(count)")
        count += 1
    }
}

// MARK: - ElectricHeater

class ETHMiner: Miner {
    
    private var count: Int = 0
    
    func mine() {
        print("Mining ETH... \(count)")
        count += 1
    }
}

// MARK: - MiningFactory

class MiningFactory {
    
    @Injected1
    private var btcMiner: BTCMiner
    @Injected1
    private var ethMiner: ETHMiner
    
    func work(){
        self.btcMiner.mine()
        self.ethMiner.mine()
        print("Mining factory ended working...")
    }
}

// MARK: - Injected1

@propertyWrapper
struct Injected1<T> {

    var wrappedValue: T
    
    init() {
        self.wrappedValue = Resolver1.resolve()
    }
}

// MARK: - Resolver1

class Resolver1 {
    
    private static var shared = Resolver1()
    private var dependencies = [String: AnyObject]()

    static func register<T>(_ dependency: T) {
        shared.register(dependency)
    }

    static func resolve<T>() -> T {
        shared.resolve()
    }

    // MARK: - Private Methods
    
    private func register<T>(_ dependency: T) {
        let key = String(describing: T.self)
        dependencies[key] = dependency as AnyObject
    }

    private func resolve<T>() -> T {
        let key = String(describing: T.self)
        let dependency = dependencies[key] as? T

        precondition(dependency != nil, "No dependency found for \(key)! must register a dependency before resolve.")

        return dependency!
    }
}
