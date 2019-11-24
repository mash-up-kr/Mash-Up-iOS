//
//  MashUpProvider.swift
//  Mash-Up-iOS
//
//  Created by Gaon Kim on 2019/11/25.
//  Copyright © 2019 Mash-Up. All rights reserved.
//

import Foundation
import Moya
import Result

final class MashUpProvider {
    private static let provider = MoyaProvider<MashUpService>()
    
    static func noticeList(completion: @escaping (NoticeList) -> Void, failure: @escaping (Error) -> Void) {
        provider.request(.noticeList) { result in
            self.resultTask(result, completion: completion, failure: failure)
        }
    }
}

extension MashUpProvider {
    static func resultTask<T: Decodable>(_ result: Result<Response, MoyaError>, completion: @escaping ((T) -> Void), failure: @escaping (Error) -> Void) {
        switch result {
        case .success(let response):
            if let body = try? response.map(T.self) {
                completion(body)
            }
        
        case .failure(let error):
            failure(error)
        }
    }
}

