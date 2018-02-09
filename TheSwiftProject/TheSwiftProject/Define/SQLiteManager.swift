//
//  SQLiteManager.swift
//  TheSwiftProject
//
//  Created by lalala on 2018/2/7.
//  Copyright © 2018年 LSH. All rights reserved.
//

import Foundation
import SQLite

struct SQLiteManager {
     //数据库链接
    var database: Connection!
    
    init() {
        do {
            let path = NSHomeDirectory() + "/Documents/news.sqlite3"
            database = try Connection(path)
        } catch {
            print(error)
        }
    }
}

//首页新闻分类的标题数据表
struct NewsTitleTable {
     ///数据库管理者
    private let sqlManager = SQLiteManager()
    //新闻标题  表
    private let news_title = Table("news_title")
    //表字段
    let id = Expression<Int64>("id")
    let category = Expression<String>("category")
    let tip_new = Expression<Int64>("tip_new")
    let default_add = Expression<Int64>("default_add")
    let web_url = Expression<String>("web_url")
    let concern_id = Expression<String>("concern_id")
    let icon_url = Expression<String>("icon_url")
    let flags = Expression<Int64>("flags")
    let type = Expression<Int64>("type")
    let name = Expression<String>("name")
    let selected = Expression<Bool>("selected")
    
    init() {
        //建表
        try! sqlManager.database.run(news_title.create(block: { t in
            t.column(id, primaryKey: true)
            t.column(category)
            t.column(tip_new)
            t.column(default_add)
            t.column(web_url)
            t.column(concern_id)
            t.column(icon_url)
            t.column(flags)
            t.column(type)
            t.column(name)
            t.column(selected)
        }))
    }
    
    //插入一组数据
//    func insert(_ titles: [])
}





