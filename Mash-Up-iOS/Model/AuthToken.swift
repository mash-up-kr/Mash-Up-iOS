//
//  AuthToken.swift
//  Mash-Up-iOS
//
//  Created by Gaon Kim on 2019/12/04.
//  Copyright © 2019 Mash-Up. All rights reserved.
//

import Foundation

struct AuthToken: Codable {
    let key: String
    let user: User
}
