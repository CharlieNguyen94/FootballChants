//
//  Manager.swift
//  FootballChants
//
//  Created by Charlie Nguyen on 04/09/2021.
//

import Foundation

enum JobType {
    case manager
    case headCoach
}

struct Manager {
    let name: String
    let jobType: JobType
}
