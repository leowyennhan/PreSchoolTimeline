//
//  HomeDataSource.swift
//  PreSchool(Timeline)
//
//  Created by Leow Yenn Han on 4/13/17.
//  Copyright © 2017 Eden. All rights reserved.
//

import LBTAComponents



class HomeDataSource: Datasource{
    
    let users: [User] = {
        let YennUser = User(name: "YennHan", username: "@yennhan96", bioText: "Mushi mushi",profileimage:#imageLiteral(resourceName: "Elephant"))
        
        let DennUser = User(name: "Denn", username: "@Dennnn", bioText: "Belly-Jelly", profileimage:#imageLiteral(resourceName: "1-freepik"))
        
        let thistestlong = User(name: "Testing", username: "LOLOLOL", bioText: "The Words With Friends® Cheat from YourDictionary is the perfect help you need . Enter your tiles to find a list of words. Our word finder scans the dictionary to somromgaosmfaoremfibn gkwermod,smdivgnfemordslk  a unit of language, consisting of one or more spoken sounds or their written representation, that functions as a principal carrier of meaning. Words are composed Enter your tiles to find a list of words. Our word finder scans the dictionary to ary to somromgaosmfaoremfibn gkwermod,smdivgnfemordslk  ", profileimage: #imageLiteral(resourceName: "Eden 1980x1080"))
        

        
        return [YennUser,DennUser, thistestlong]
    }()
    
    
    //let words = ["user1","user2","user3"]
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [Usercell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any?{
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
}
}
