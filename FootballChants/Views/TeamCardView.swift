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
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(team.name)
                        .font(.system(size: 18, weight: .bold))
                    Text("Founded: \(team.founded)")
                        .font(.system(size: 12, weight: .light))
                    Text("Current \(team.manager.job.rawValue): \(team.manager.name)")
                        .font(.system(size: 10, weight: .light))
                    Text(team.info)
                        .font(.system(size: 12, weight: .medium))
                    
                }
                
                Spacer()
    
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .scaledToFit()
                })
                .frame(maxWidth: 40, maxHeight: .infinity, alignment: .center)
            }
        }
        .applyTeamCardStyle(teamType: team.id)
    }
}

struct TeamCardView_Previews: PreviewProvider {
    static var previews: some View {
        TeamCardView(team: Team.dummyData[0])
            .previewLayout(PreviewLayout.fixed(width: 400, height: 150))
            .padding()
    }
}
