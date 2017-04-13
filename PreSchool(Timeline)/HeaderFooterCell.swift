//
//  Cells.swift
//  PreSchool(Timeline)
//
//  Created by Leow Yenn Han on 4/13/17.
//  Copyright © 2017 Eden. All rights reserved.
//

import LBTAComponents

let thisBlue = UIColor(r: 61, g: 167, b: 244)


class UserHeader: DatasourceCell {
    let textlable: UILabel = {
        let label = UILabel()
        label.text = "WHO?"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    override func setupViews() {
        super.setupViews()
        
        separatorLineView.isHidden = false
        
        addSubview(textlable)
        textlable.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
}
class UserFooter: DatasourceCell{
    let textlable: UILabel = {
        let label = UILabel()
        label.text = "More Classes?"
        label.textColor = thisBlue
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        addSubview(textlable)
        textlable.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
}

