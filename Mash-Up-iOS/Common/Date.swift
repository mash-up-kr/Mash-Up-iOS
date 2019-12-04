//
//  Date.swift
//  Mash-Up-iOS
//
//  Created by Gaon Kim on 2019/12/04.
//  Copyright © 2019 Mash-Up. All rights reserved.
//

import Foundation

extension Date {
    var weekDay: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "e"
        let dayIndex = (Int(formatter.string(from: self)) ?? 1) - 1
        let days = ["일", "월", "화", "수", "목", "금", "토"]
        
        return days[dayIndex]
    }
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy년 M월 d일"
        var date = formatter.string(from: self)
        date += " (\(weekDay))"
        
        return date
    }
}
