//
//  OnboardingViewModel.swift
//  meald
//
//  Created by Hutch Turner on 11/7/25.
//

import Foundation
import MapKit
internal import Combine

class LocationSearchViewModel: NSObject, ObservableObject, MKLocalSearchCompleterDelegate {
    
    @Published var res: [String] = []
    var type: String?
    private let completer = MKLocalSearchCompleter()
    
    init(type: String?) {
        super.init()
        self.type = type
        completer.delegate = self
        if type == nil || type == "location" {
            completer.resultTypes = [.address]
        } else if type == "poi" {
            completer.resultTypes = [.pointOfInterest]
        }
    }
    
    func update(query: String) {
        completer.queryFragment = query
    }
    
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        // Only keep localities / cities
        if type == "poi" {
            res = completer.results
                .map { "\($0.title)" }
        } else {
            res = completer.results
                .filter { $0.subtitle.contains("City") || $0.subtitle.contains("County") || $0.subtitle != "" }
                .map { "\($0.title), \($0.subtitle)" }
        }
    }
    
    
}
