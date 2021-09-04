//
//  TeamCardView.swift
//  FootballChants
//
//  Created by Charlie Nguyen on 04/09/2021.
//

import SwiftUI

struct TeamCardView: View {
    
    let team: Team
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(alignment: .top, spacing: 12) {
                
                Image(team.id.badge)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .accessibility(label: Text("\(team.name) Badge"))
                
                VStack(alignment: .leading, spacing: 5) {
                    
                    Text(team.name)
                        .font(.system(size: 18, weight: .bold))
                        .accessibility(label: Text("Team Name"))
                        .accessibility(value: Text(team.name))
                    
                    Text("Founded: \(team.founded)")
                        .font(.system(size: 12, weight: .light))
                        .accessibility(label: Text("Team Founded"))
                        .accessibility(value: Text(team.founded))
                    
                    Text("Current \(team.manager.job.rawValue): \(team.manager.name)")
                        .font(.system(size: 10, weight: .light))
                        .accessibility(label: Text("\(team.manager.job.rawValue)"))
                        .accessibility(value: Text(team.manager.name))
                    
                    Text(team.info)
                        .font(.system(size: 12, weight: .medium))
                        .accessibility(label: Text("Information"))
                        .accessibility(value: Text(team.info))
                    
                }
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .scaledToFit()
                })
                .frame(maxWidth: 40, maxHeight: .infinity, alignment: .center)
                .accessibilityElement(children: .ignore)
                .accessibility(value: Text(team.isPlaying ? "Pause" : "Play"))
            }
        }
        .applyTeamCardStyle(teamType: team.id)
    }
}

struct TeamCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TeamCardView(team: Team.dummyData[0])
                .previewLayout(PreviewLayout.fixed(width: 400, height: 150))
                .padding()
                .previewDisplayName("Team Card Preview 1")
            TeamCardView(team: Team.dummyData[2])
                .previewLayout(PreviewLayout.fixed(width: 400, height: 150))
                .padding()
                .previewDisplayName("Team Card Preview 2")
        }
    }
}
