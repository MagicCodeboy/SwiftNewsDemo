//
//  Const.swift
//  TheSwiftProject
//
//  Created by lalala on 2018/2/6.
//  Copyright © 2018年 LSH. All rights reserved.
//

import UIKit

//屏幕的宽度和高度
let SCREEN_WIDTH = UIScreen.main.bounds.width
let SCREEN_HEIGHT = UIScreen.main.bounds.height

//emoji 宽度
let emojiItemWidth = SCREEN_WIDTH / 7

//服务器地址
//let BASE_URL = "http://if.snssdk.com"
//let BASE_URL = "http://ib.snssdk.com"
let BASE_URL = "http://is.snssdk.com"

let device_id : Int = 6096495334
let iid: Int = 50344850950

let isIPhoneX: Bool = SCREEN_WIDTH == 812 ? true : false

let newsTitleHeight : CGFloat = 40
let kMyheaderViewHeight: CGFloat = 280
let kUserDetailHeaderBGImageViewHeight: CGFloat = 146

let isNight = "isNigth"
//关注的用户详情界面 topTab的按钮的宽度
let topTabindicatorWidth: CGFloat = 40
let topTabindicatorHeight: CGFloat = 2

let MyPresentationControllerDismiss = "MyPresentationControllerDismiss"
let NavigationBarConcernButtonClicked = "NavigationBarConcernButtonClicked"
let UserDetailHeaderViewButtonClicked = "UserDetailHeaderViewButtonClicked"

//动态图片的高度
//图片的高度
// 1  screenWidth * 0.5
// 2  (screenWidth - 35) / 2
// 3-9 （screenWidth - 40）/ 3
let image1Width: CGFloat = SCREEN_WIDTH * 0.5
let image2Width: CGFloat = (SCREEN_WIDTH - 35) * 0.5
let image3Width: CGFloat = (SCREEN_WIDTH - 40) / 3

//从哪里进入问答控制器
enum WendaEnterFrom: String {
    case dongtai = "dongtai"
    case clickHeadline = "click_headline"
    case clickCategory = "click_category"
}

//从哪里进入头条
enum TTFrom: String {
    case  pull = "pull"
    case loadMore = "load_more"
    case auto = "auto"
    case enterAuto = "enter_auto"
    case preLoadMoreDraw = "pre_load_more_draw"
}








