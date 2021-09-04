//
//  Team.swift
//  FootballChants
//
//  Created by Charlie Nguyen on 04/09/2021.
//

import Foundation

struct Team {
    
    let id: TeamType
    let name: String
    let info: String
    let manager: Manager
    let founded: String
    var isPlaying: Bool = false
    
}

extension Team {
    var dummyData: [Team] {
        return [
            Team(id: .manchesterUnited, name: "Team 1", info: "This is dummy data", manager: Manager(name: "Manager 1", job: .manager), founded: "1800")
        ]
    }
}
