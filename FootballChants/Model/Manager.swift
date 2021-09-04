//
//  Manager.swift
//  FootballChants
//
//  Created by Charlie Nguyen on 04/09/2021.
//

import Foundation

enum Job: String {
    case manager = "Manager"
    case headCoach = "Head Coach"
}

struct Manager {
    let name: String
    let job: Job
}
