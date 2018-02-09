//
//  NewsModel.swift
//  TheSwiftProject
//
//  Created by lalala on 2018/2/8.
//  Copyright © 2018年 LSH. All rights reserved.
//

import HandyJSON

//新闻数据模型 （首页新闻数据，视频新闻数据，小视频，微头条）
struct NewsModel: HandyJSON {
    
    var weitoutiaoHeight: CGFloat {
        var height: CGFloat = 120
        return height
    }
}
