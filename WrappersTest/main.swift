//
//  main.swift
//  WrappersTest
//
//  Created by Петр Тартынских  on 05.07.2022.
//

import Foundation
import Factory



// MARK: - DI1

//Resolver1.register(BTCMiner())
//Resolver1.register(ETHMiner())
//
//print("==1==")
//
//let factory1 = MiningFactory()
//factory1.work()
//
//print("==2==")
//
//let factory2 = MiningFactory()
//factory2.work()
//factory2.work()

// MARK: - DI2

//Resolver2.register(ElectricHeater())
//Resolver2.register(Pump())
//
//print("==1==")
//
//let coffeeMaker1 = CoffeeMaker()
//coffeeMaker1.makeCoffee()
//
//print("==2==")
//
//let coffeeMaker2 = CoffeeMaker()
//coffeeMaker2.makeCoffee()
//coffeeMaker2.makeCoffee()

// MARK: - DI3

//print("==1==")
//var dataController1 = DataController()
//var dataController2 = DataController()
//dataController1.performDataRequest()
//dataController2.performDataRequest()
//
//print("==2==")
//InjectedValues[\.networkProvider] = MockedNetworkProvider()
//dataController1.performDataRequest()
//dataController2.performDataRequest()
//
//print("==3==")
//dataController1.networkProvider = NetworkProvider()
//dataController1.performDataRequest()
//dataController2.performDataRequest()

// MARK: - Factory

print("==1==")
var city1 = City()
var city2 = City()
city1.startDay()
city2.startDay()

print("==2==")
Container.worker.register { Fireman() as Worker }
var city3 = City()
var city4 = City()
city3.startDay()
city4.startDay()
