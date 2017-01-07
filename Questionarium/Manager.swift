//
//  Manager.swift
//  Questionarium
//
//  Created by Andrew Belozerov on 07.01.17.
//  Copyright © 2017 Andrew Belozerov. All rights reserved.
//

import Foundation

class QuestionsManager {
    
    var result: Int = 0
    let checkSum = 20
    
    static let sharedInstance = QuestionsManager()
    
    private init() {

    }
    
    func reset() {
        result = 0
    }
}
