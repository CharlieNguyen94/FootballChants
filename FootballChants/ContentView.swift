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
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            TeamCardView(team: Team.dummyData[0])
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
