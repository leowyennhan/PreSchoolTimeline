//
//  UserCell.swift
//  PreSchool(Timeline)
//
//  Created by Leow Yenn Han on 4/13/17.
//  Copyright © 2017 Eden. All rights reserved.
//

import LBTAComponents

class Usercell: DatasourceCell {
    
    override var datasourceItem: Any?{
        didSet {
            
            
            guard let user = datasourceItem as? User else {return}
            nameLabel.text = user.name
            usernamelabel.text = user.username
            biotextview.text = user.bioText
            profileimageview.image = user.profileimage
            
            
        }
    }
    
    let profileimageview: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "1-freepik")
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Yenn Han"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    
    let usernamelabel :UILabel = {
        let label = UILabel()
        label.text = "@CEO"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor( r:130 , g:130 , b:130)
        return label
    }()
    
    let biotextview : UITextView = {
        let textView = UITextView()
        textView.text = "Selamat Datang ke applikasi pinoy terbaik"
        textView.font = UIFont.systemFont(ofSize: 15)
        textView.backgroundColor = .clear
        return textView
    }()
    
    let followbutton: UIButton = {
        
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.layer.borderColor = thisBlue.cgColor
        button.layer.borderWidth = 2
        //button.setImage(#imageLiteral(resourceName: "Elephant"), for: .normal)
        
        
        button.setTitle("Ikut", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.titleLabel?.sizeToFit()
        button.setTitleColor(thisBlue, for: .normal)
        button.setNeedsLayout()
        
        
        button.imageView?.contentMode = .scaleAspectFit
        
        
        
        //button.titleEdgeInsets = UIEdgeInsetsMake(0, button.imageEdgeInsets.left+10, 0,0 )
        button.imageEdgeInsets = UIEdgeInsetsMake(0, -80, 0, 0)
        return button
    }()
    
    override func setupViews() {
        super.setupViews()
        
        separatorLineView.isHidden = false
        
        
        
        addSubview(profileimageview)
        addSubview(nameLabel)
        addSubview(usernamelabel)
        addSubview(biotextview)
        addSubview(followbutton)
        
        profileimageview.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        nameLabel.anchor(profileimageview.topAnchor, left: profileimageview.rightAnchor, bottom: nil, right:followbutton.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        usernamelabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        biotextview.anchor(usernamelabel.bottomAnchor, left: usernamelabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: -4, leftConstant: -4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        followbutton.anchor(topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 34)
        
        
    }
}

