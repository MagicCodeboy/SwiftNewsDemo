//
//  Calculate.swift
//  TheSwiftProject
//
//  Created by lalala on 2018/2/8.
//  Copyright © 2018年 LSH. All rights reserved.
//

import UIKit

protocol Calculateble {
     //计算高度
    static func collectionViewWidth(_ count: Int) -> CGFloat
    //计算高度
    static func collectionViewHeight(_ count: Int) -> CGFloat
    //计算 collectionviewCell 的大小
    static func collectionViewCellSize(_ count: Int) -> CGFloat
    //计算富文本的高度
    static func attributedTextHeight(text: NSAttributedString, width: CGFloat) -> CGFloat
    //计算文本的高度
    static func textHeight(text: String, fontSize: CGFloat, widht: CGFloat) -> CGFloat
    //计算文本的高度
    static func textWidth(text: String, fontSize: CGFloat, hieght: CGFloat) -> CGFloat
    //从文本内容中获取 UUID 和 用户名
        //    static func richContents(from content: String, idPattern: String, titlepattern: String) -
    //
}
