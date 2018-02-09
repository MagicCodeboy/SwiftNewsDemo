//
//  MyTabbar.swift
//  TheSwiftProject
//
//  Created by lalala on 2018/2/6.
//  Copyright © 2018年 LSH. All rights reserved.
//

import UIKit

class MyTabbar: UITabBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
        theme_tintColor = "colors.tabbarTintColor"
        theme_barTintColor = "colors.cellBackgroundColor"
        addSubview(publishButton)
    }
    
    //private 绝对私有, 除了在当前类中可以访问之外， 其他任何类或者该类的扩展都不可能访问到
    //fileprivate 文件私有， 可以在当前类文件中访问 其他文件不能访问
    //open 在任何文件中都可以访问的到
    //internal 默认的权限 也可以不写
    private lazy var publishButton: UIButton = {
       let publishButton = UIButton.init(type: UIButtonType.custom)
        publishButton.theme_setBackgroundImage("images.tab_redpackage_big_64x44_", forState: .normal)
        publishButton.theme_setBackgroundImage("images.tab_redpackage_big_press_64x44_", forState: .selected)
        publishButton.sizeToFit()
        return publishButton
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
         super.layoutSubviews()
        //当前 tabbar 的宽度和高度
        let width = frame.width
        let height = frame.height
        
        publishButton.center = CGPoint.init(x: width * 0.5, y: height * 0.5 - 7)
        //设置其他按钮的 frame
        let buttonW: CGFloat = width * 0.2
        let buttonH: CGFloat = height
        let buttonY: CGFloat = 0
        //不能使用 subviews.enumerated 的遍历方式
        var index = 0
        
        for button in subviews {
            if !button.isKind(of: NSClassFromString("UITabBarButton")!) { continue }
            let buttonX = buttonW * (index > 1 ? CGFloat(index + 1) : CGFloat(index))
            button.frame = CGRect.init(x: buttonX, y: buttonY, width: buttonW, height: buttonH)
            index += 1
        }
    }
}
