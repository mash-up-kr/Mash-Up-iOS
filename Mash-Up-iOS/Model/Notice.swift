//
//  Notice.swift
//  Mash-Up-iOS
//
//  Created by Gaon Kim on 2019/11/25.
//  Copyright © 2019 Mash-Up. All rights reserved.
//

import Foundation

struct NoticeList: Codable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [Notice]
}

struct Notice: Codable {
    let pk: Int
    let team: Team?
    let title: String
    let author: User
    let startAt: String?
    let duration: String
    let address1: String
    let address2: String
    let description: String
}
