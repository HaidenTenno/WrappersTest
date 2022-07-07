//
//  FactoryDependencies.swift
//  WrappersTest
//
//  Created by Петр Тартынских  on 07.07.2022.
//

import Foundation
import Factory

protocol Worker {
    func work()
}

class Policeman: Worker {
    
    private var count: Int = 0
    
    func work() {
        print("Policeman works \(count)")
        count += 1
    }
}

class Fireman: Worker {
    
    private var count: Int = 0
    
    func work() {
        print("Fireman works \(count)")
        count += 1
    }
}

class City {
    
    @Injected(Container.worker) private var worker: Worker
    
    func startDay() {
        worker.work()
    }
}
