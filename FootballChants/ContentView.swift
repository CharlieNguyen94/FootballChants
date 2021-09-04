//
//  ContentView.swift
//  FootballChants
//
//  Created by Charlie Nguyen on 04/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    let team: Team
    
    var body: some View {
        List(0..<5) { item in
            TeamCardView(team: team)
        }
    }
    
    func greetings() {
        print("Hello world")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(team: Team.dummyData[0])
    }
}
