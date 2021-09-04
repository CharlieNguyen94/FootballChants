//
//  TeamCardViewModifier.swift
//  FootballChants
//
//  Created by Charlie Nguyen on 04/09/2021.
//

import SwiftUI

struct TeamCardViewModifier: ViewModifier {
    
    let teamType: TeamType
    
    func body(content: Content) -> some View {
        content
            .padding(8)
            .foregroundColor(.white)
            .background(teamType.background)
            .cornerRadius(10)
    }
    
    
}
