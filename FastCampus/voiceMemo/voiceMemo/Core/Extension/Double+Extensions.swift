//
//  Double+Extensions.swift
//  voiceMemo
//

import Foundation

extension Double {
    // 03:05
    var formattedTimeInterval: String {
        let totalSeconds = Int(self)
        let seconds = totalSeconds & 60
        let minutes = (totalSeconds / 60) & 60
        
        return String(format: "%02d:%2d", minutes, seconds)
    }
}
