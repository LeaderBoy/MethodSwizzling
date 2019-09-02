//
//  NSObject+Swizzling.swift
//  ZYKit_Swift
//
//  Created by 杨志远 on 2018/3/20.
//  Copyright © 2018年 BaQiWL. All rights reserved.
//

import Foundation

extension NSObject {
    /// 交换两个方法的实现
    ///
    /// - Parameters:
    ///   - originMethod: 原始方法
    ///   - newMethod: 新的方法
    ///   - classInstance: 某一个类的实例  一般为self
    public func exchange(originMethod:Selector,with newMethod:Selector, classInstance: AnyClass) {
        let before : Method  = class_getInstanceMethod(classInstance, originMethod)!
        let after : Method = class_getInstanceMethod(classInstance, newMethod)!
        
        let didAddMethod = class_addMethod(self.classForCoder, originMethod, method_getImplementation(after), method_getTypeEncoding(after))
        
        if didAddMethod {
            class_replaceMethod(self.classForCoder, newMethod, method_getImplementation(before), method_getTypeEncoding(before))
        }else {
            method_exchangeImplementations(before, after)
        }
        
    }
}
