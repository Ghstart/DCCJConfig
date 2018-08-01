//
//  Result.swift
//  TestResult
//
//  Created by 龚欢 on 2018/7/31.
//  Copyright © 2018年 龚欢. All rights reserved.
//

import Foundation

/*
 ** 返回的数据类型
 */
public enum Result<Value> {
    case success(Value)
    case failure(Error)
}
