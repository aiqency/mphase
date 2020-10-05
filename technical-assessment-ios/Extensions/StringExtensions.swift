//
//  StringExtensions.swift
//  technical-assessment-ios
//
//  Created by yannhuissoud on 10/5/20.
//  Copyright © 2020 yannhuissoud. All rights reserved.
//

import Foundation

extension String {
    
    func fromISO8601ToString() -> String {
        let dateFormatter = ISO8601DateFormatter()
        dateFormatter.formatOptions = ISO8601DateFormatter.Options.withInternetDateTime.subtracting(.withTimeZone)
        let date = dateFormatter.date(from: self)!
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone.current
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        return formatter.string(from: date)
    }
}
