//
//  Profile.swift
//  DIGM540
//
//  Created by Chelsea James on 6/9/22.
//

import Foundation
import HealthKit

class UserHealthProfile {
  var age: Int?
  var biologicalSex: HKBiologicalSex?
  var bloodType: HKBloodType?
  var heightInMeters: Double?
  var weightInKilograms: Double?
  
  var bodyMassIndex: Double? {
    guard
      let weightInKilograms = weightInKilograms,
      let heightInMeters = heightInMeters,
      heightInMeters > 0
      else {
        return nil
    }
    
    return (weightInKilograms/(heightInMeters*heightInMeters))
  }
}
