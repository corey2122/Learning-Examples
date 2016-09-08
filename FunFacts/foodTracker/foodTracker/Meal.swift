//
//  Meal.swift
//  foodTracker
//
//  Created by CJS  on 4/29/16.
//  Copyright © 2016 CJS . All rights reserved.
//

import Foundation

// MARK: Initialization

init?(name: String, photo: UIImage?, rating: Int) {
    // Initialize stored properties.
    self.name = name
    self.photo = photo
    self.rating = rating
    
    // Initialization should fail if there is no name or if the rating is negative.
    if name.isEmpty || rating < 0 {
        return nil
    }
}
