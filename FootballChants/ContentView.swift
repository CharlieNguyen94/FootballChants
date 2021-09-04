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
        ScrollView {
            LazyVStack(spacing: 24) {
                ForEach(viewModel.teams) { team in
                    TeamCardView(team: team) { selectedTeam in
                        viewModel.togglePlayback(for: selectedTeam)
                    }
                }
            }
            .padding(.top, 8)
        }
        .padding(.horizontal, 8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
