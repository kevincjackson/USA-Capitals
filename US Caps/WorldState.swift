//
//  WorldState.swift
//  US Caps
//
//  Created by Kevin Jackson on 5/22/19.
//  Copyright © 2019 Kevin Jackson. All rights reserved.
//

import Foundation

struct WorldState {
    
    var index = 0
    var pairReversed = false
    var displayMode: DisplayMode.Mode = .show
    var displayScreen: Screen = .list
    var filter: Filter = .all
    var all: [State] = States.all
    
    enum Filter: String, CaseIterable {
        case all
        case midwest
        case northeast
        case southeast
        case southwest
        case west
    }
    
    enum Screen {
        case list
        case item
    }
    
    // MARK: TODO Use observer instead?
    var states: [State] {
        switch filter {
        case .all:
            return all
        case .midwest:
            return all.filter { $0.region == .midwest }
        case .northeast:
            return all.filter { $0.region == .northeast }
        case .southeast:
            return all.filter { $0.region == .southeast }
        case .southwest:
            return all.filter { $0.region == .southwest }
        case .west:
            return all.filter { $0.region == .west}
        }
    }
}
