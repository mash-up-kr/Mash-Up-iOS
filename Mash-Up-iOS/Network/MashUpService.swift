//
//  MashUpService.swift
//  Mash-Up-iOS
//
//  Created by Gaon Kim on 2019/11/25.
//  Copyright © 2019 Mash-Up. All rights reserved.
//

import Foundation
import Moya

enum MashUpService {
    case authToken(email: String, password: String)
    case noticeList
}

extension MashUpService: TargetType {
    var baseURL: URL {
        return URL(string: "https://mashup.lhy.kr/api/")!
    }
    
    var path: String {
        switch self {
        case .authToken:
            return "members/auth-token/"
        case .noticeList:
            return "notices/"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .authToken: return .post
        case .noticeList: return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .authToken(let email, let password):
            return .requestParameters(parameters: ["email": email, "password": password], encoding: JSONEncoding.default)
        case .noticeList:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return ["Authorization": "Basic bXl1bmc2MDI0QG5hdmVyLmNvbTpndXNhdWR3bnM="]
    }
    
    var validationType: ValidationType {
        return .successCodes
    }
}
