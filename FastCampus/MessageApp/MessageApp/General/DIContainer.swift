//
//  DIContainer.swift
//  MessageApp
//
//  Created by 황성진 on 1/19/24.
//

import Foundation

class DIContainer: ObservableObject {
    var services: ServiceType
    
    init(services: ServiceType) {
        self.services = services
    }
}
