//
//  Team.swift
//  FootballChants
//
//  Created by Charlie Nguyen on 04/09/2021.
//

import Foundation

struct Team: Identifiable {
    
    let id: TeamType
    let name: String
    let info: String
    let manager: Manager
    let founded: String
    var isPlaying: Bool = false
    
}

extension Team {
    static var dummyData: [Team] {
        return [
            Team(id: .manchesterUnited,
                 name: "Team 1",
                 info: "This is dummy data",
                 manager: Manager(name: "Manager 1",
                                  job: .manager),
                 founded: "1800"),
            Team(id: .arsenal,
                 name: "Team 2",
                 info: "This is dummy data",
                 manager: Manager(name: "Manager 2",
                                  job: .manager),
                 founded: "1840"),
            Team(id: .liverpool,
                 name: "Team 3",
                 info: "This is dummy data",
                 manager: Manager(name: "Head Coach 1",
                                  job: .headCoach),
                 founded: "1840")
        ]
    }
}
