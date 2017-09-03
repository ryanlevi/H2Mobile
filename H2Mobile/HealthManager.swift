//
//  HealthManager.swift
//  H2Mobile
//
//  Created by Ryan Levi on 9/2/17.
//  Copyright © 2017 Ryan Levi. All rights reserved.
//

import Foundation
import HealthKit

class HealthManager {
    public let healthStore = HKHealthStore()
    
    public func requestPermissions() {
        let healthWater = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.dietaryWater)
        let healthWeight = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.bodyMass)
        let healthSteps = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)
        let healthSex = HKCharacteristicType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.biologicalSex)
        let healthDOB = HKCharacteristicType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.dateOfBirth)
        
        
        let readDataTypes : Set = [healthWater!, healthWeight!, healthSteps!, healthSex!, healthDOB!]
        let writeDataTypes : Set = [healthWater!]
        
        healthStore.requestAuthorization(toShare: writeDataTypes, read: readDataTypes, completion: { (success, error) in
            if success {
                print("Authorization complete")
            } else {
                print("Authorization error: \(String(describing: error?.localizedDescription))")
            }
        })
        
        
    }
}
