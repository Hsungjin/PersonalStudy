//
//  Memo.swift
//  voiceMemo
//

import Foundation

struct Memo {
    var title: String
    var content: String
    var date: Date
    var id =  UUID()
    
    var convertedDate: String {
        String("\(date.formattedDay) - \(date.formattedTime)")
    }
}
