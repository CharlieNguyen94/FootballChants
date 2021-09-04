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
        VStack(alignment: .leading) {
            
            HStack(alignment: .top, spacing: 12) {
                
                Image(team.id.badge)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(team.name)
                    Text("Founded: \(team.founded)")
                    Text("Manager")
                    Text(team.info)
                    
                }
    
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "play.circle.fill")
                })
            }
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
