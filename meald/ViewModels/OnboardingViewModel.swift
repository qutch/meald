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
    private let completer = MKLocalSearchCompleter()
    
    override init() {
        super.init()
        completer.delegate = self
        completer.resultTypes = [.address]
    }
    
    func update(query: String) {
        completer.queryFragment = query
    }
    
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        // Only keep localities / cities
        res = completer.results
            .filter { $0.subtitle.contains("City") || $0.subtitle.contains("County") || $0.subtitle != "" }
            .map { "\($0.title), \($0.subtitle)" }
    }
    
    
}
