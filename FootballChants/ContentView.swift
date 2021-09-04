//
//  ContentView.swift
//  FootballChants
//
//  Created by Charlie Nguyen on 04/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = TeamsViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.teams) { team in
                TeamCardView(team: team) { selectedTeam in
                    print("Selected Team: \(selectedTeam)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
