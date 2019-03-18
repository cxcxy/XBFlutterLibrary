//
//  String+.swift
//  BSMaster
//
//  Created by 陈旭 on 2017/9/29.
//  Copyright © 2017年 陈旭. All rights reserved.
//

import Foundation
extension String {
    
    //将原始的url编码为合法的url  处理URL中的中文问题
    func urlEncoded() -> String {
        let encodeUrlString = self.addingPercentEncoding(withAllowedCharacters:
            .urlQueryAllowed)
        return encodeUrlString ?? ""
    }
    
    //将编码后的url转换回原始的url
    func urlDecoded() -> String {
        return self.removingPercentEncoding ?? ""
    }
    /**
     替换手机号中间四位为“****”
     */
    mutating func get_formted_xxPhone() ->  String{
        
        //开始字符索引
        let startIndex = self.index(self.startIndex, offsetBy: 3)
        //结束字符索引
        let endIndex = self.index(self.startIndex, offsetBy: 7)
        let range: Range<Index> = startIndex..<endIndex
        var s = String()
        for _ in 0..<7 - 3{
            s += "*"
        }
        return self.replacingCharacters(in: range, with: s)
    }
}
