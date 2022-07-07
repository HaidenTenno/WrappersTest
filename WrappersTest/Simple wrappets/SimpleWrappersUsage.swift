//
//  SimpleWrappersUsage.swift
//  WrappersTest
//
//  Created by Петр Тартынских  on 07.07.2022.
//

import Foundation

// MARK: - Simplest

//struct SimplestTest {
//    @Simplest
//    var value: String
//}
//let simplest = SimplestTest(value: "test")
////print(simplest.value)
//
//extension SimplestTest {
//    func printWrapper() {
//        print(_value)
//    }
//}
//simplest.printWrapper() // Simplest<String>(wrappedValue: "test")


// MARK: - Abs

//struct AbsTest {
//    @Abs
//    var value: Int = 0
//}
//
//var absTest = AbsTest(value: -10)
//print(absTest.value) // 10
//absTest.value = -5
//print(absTest.value) // 5

// MARK: - Uppercased

//struct UppercasedTest {
//    @Uppercased
//    var name: String
//
//    init(_ name: String) {
//        _name = Uppercased(wrappedValue: name)
//    }
//}
//var uppercasedTest = UppercasedTest("eto baza") // ETO BAZA
//print(uppercasedTest.name)

// MARK: - VarWithMemory

//struct TestVarWithMemory {
//    @VarWithMemory
//    var value: String = ""
//}
//
//var test = TestVarWithMemory(value: "initial")
//print("1. current value: \(test.value)") // initial
//test.value = "second"
//print("2. current value: \(test.value)") // second
//test.value = "third"
//print("3. current value: \(test.value)") // third
//
//print("4. history: \(test.$value.previousValues)") // ["initial", "second"]
//print("5. clear")
//test.$value.clear()
//print("6. current value: \(test.value)") // third
//print("7. history: \(test.$value.previousValues)") // []


// MARK: - Simplest

//struct SimplestTest {
//    @Simplest
//    var value: String
//}
//let simplest = SimplestTest(value: "test")
////print(simplest.value)
//
//extension SimplestTest {
//    func printWrapper() {
//        print(_value)
//    }
//}
//simplest.printWrapper() // Simplest<String>(wrappedValue: "test")


// MARK: - Abs

//struct AbsTest {
//    @Abs
//    var value: Int = 0
//}
//
//var absTest = AbsTest(value: -10)
//print(absTest.value) // 10
//absTest.value = -5
//print(absTest.value) // 5

// MARK: - Uppercased

//struct UppercasedTest {
//    @Uppercased
//    var name: String
//
//    init(_ name: String) {
//        _name = Uppercased(wrappedValue: name)
//    }
//}
//var uppercasedTest = UppercasedTest("eto baza") // ETO BAZA
//print(uppercasedTest.name)

// MARK: - VarWithMemory

//struct TestVarWithMemory {
//    @VarWithMemory
//    var value: String = ""
//}
//
//var test = TestVarWithMemory(value: "initial")
//print("1. current value: \(test.value)") // initial
//test.value = "second"
//print("2. current value: \(test.value)") // second
//test.value = "third"
//print("3. current value: \(test.value)") // third
//
//print("4. history: \(test.$value.previousValues)") // ["initial", "second"]
//print("5. clear")
//test.$value.clear()
//print("6. current value: \(test.value)") // third
//print("7. history: \(test.$value.previousValues)") // []
