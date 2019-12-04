//
//  String.swift
//  Mash-Up-iOS
//
//  Created by Gaon Kim on 2019/12/04.
//  Copyright © 2019 Mash-Up. All rights reserved.
//

import Foundation

extension String {
    func convertToDate() -> Date? {
        let formatter = ISO8601DateFormatter()
        let date = formatter.date(from: self)
        return date
    }
    
    func convertToTime() -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss"
        let time = formatter.date(from: self)
        return time
    }
}
