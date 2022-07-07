//
//  Dependencies.swift
//  WrappersTest
//
//  Created by Петр Тартынских  on 06.07.2022.
//

import Foundation

// MARK: - NetworkProviding

protocol NetworkProviding {
    func requestData()
}

// MARK: - NetworkProvider

class NetworkProvider: NetworkProviding {
    
    private var count: Int = 0
    
    func requestData() {
        print("Data requested using the `NetworkProvider` \(count)")
        count += 1
    }
}

// MARK: - MockedNetworkProvider

class MockedNetworkProvider: NetworkProviding {
    
    private var count: Int = 0
    
    func requestData() {
        print("Data requested using the `MockedNetworkProvider` \(count)")
        count += 1
    }
}

// MARK: - DataController

class DataController {
    @Injected3(\.networkProvider) var networkProvider: NetworkProviding
    
    func performDataRequest() {
        networkProvider.requestData()
    }
}
