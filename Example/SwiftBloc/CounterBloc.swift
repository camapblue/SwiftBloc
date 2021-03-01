//
//  CounterBloc.swift
//  SwiftBloc_Example
//
//  Created by Kachalov, Victor on 28.02.21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import SwiftBloc

enum CounterEvent {
    case increment
    case decrement
}

struct CounterState: Equatable {
    var state = 0
}

class CounterBloc: Bloc<CounterEvent, CounterState> {
    init() {
        super.init(intialState: CounterState())
    }

    override func mapEventToState(event: CounterEvent) -> CounterState {
        switch event {
        case .increment:
            return CounterState(state: state.state + 1)
        case .decrement:
            return CounterState(state: state.state - 1)
        }
    }
}