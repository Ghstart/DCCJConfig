//
//  DataManagerError.swift
//  TestResult
//
//  Created by 龚欢 on 2018/7/31.
//  Copyright © 2018年 龚欢. All rights reserved.
//

import Foundation

/*
 ** 返回错误数据类型
 */
public enum DataManagerError: Error {
    case failedRequest                                  // 请求失败
    case invalidResponse                                // 响应失败
    case unknow                                         // 未知错误
    case customError(message: String, errCode: Int)     // 自定义错误
    
    public var errorMessage: String {
        switch self {
        case .failedRequest:
            return "请求失败"
        case .invalidResponse:
            return "响应失败"
        case .unknow:
            return "未知错误"
        case .customError(let message, _):
            return message
        }
    }
    
    public var errorCode: Int {
        switch self {
        case .failedRequest:
            return -1024
        case .invalidResponse:
            return -1025
        case .unknow:
            return -1026
        case .customError(_, let code):
            return code
        }
    }
    
    public func error() -> NSError {
        return NSError(domain: self.errorMessage, code: self.errorCode, userInfo: nil)
    }
}

extension DataManagerError: Equatable {
    public static func ==(lhs: DataManagerError, rhs: DataManagerError) -> Bool {
        switch (lhs, rhs) {
        case (.failedRequest, .failedRequest):
            return true
        case (.invalidResponse, .invalidResponse):
            return true
        case (.unknow, .unknow):
            return true
        case (.customError(let e), .customError(let s)) where e == s:
            return true
        default:
            return false
        }
    }
}

