//
//  Path.swift
//  VoiceMemo
//
//  Created by 황성진 on 3/12/24.
//

import Foundation

class PathModel: ObservableObject {
    @Published var paths: [PathType] = []
    
    init(paths: [PathType] = []) {
        self.paths = paths
    }
}
