//
//  HomeDataSourceController.swift
//  PreSchool(Timeline)
//
//  Created by Leow Yenn Han on 4/13/17.
//  Copyright © 2017 Eden. All rights reserved.
//

import LBTAComponents


class HomeDataSourceController: DatasourceController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBarItem()
        
        let homeDatasource = HomeDataSource()
        self.datasource = homeDatasource    
        
    }
        
    private func setupNavigationBarItem() {
        
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "Eden 1980x1080"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34) //make sure it has a great with and height
        titleImageView.contentMode = .scaleAspectFit
        
        
        
        navigationItem.titleView = titleImageView
        
        let followbutton = UIButton(type: .system )
        //mantaining the rendering mode with an origianl design etc.
        
        followbutton.setImage(#imageLiteral(resourceName: "addbutton").withRenderingMode(.alwaysOriginal), for: .normal)
        followbutton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
    
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followbutton ) //setting it to the left side
        
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "Search").withRenderingMode(.alwaysOriginal), for: .normal)
        
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        let composeButton = UIButton(type: .system)
        composeButton.setImage(#imageLiteral(resourceName: "write").withRenderingMode(.alwaysOriginal), for: .normal)
        
        composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)

        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: composeButton), UIBarButtonItem(customView: searchButton)]  //buttons compose opposite way.
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
    }
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if let user = self.datasource?.item(indexPath) as? User{
            //user.bioText
            
            //lets get estimation of the height of our cell base on user.biotext. dynamic cell sizing
            
            let approximateWidthBioTextView = view.frame.width - 12 - 50 - 12 - 2
            
            let size = CGSize(width: approximateWidthBioTextView, height: 1000)
            
            let attribute = [NSFontAttributeName: UIFont.systemFont(ofSize: 15)]
            //dynamically estimating the frame
            let estimatedFrame = NSString(string: user.bioText).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attribute, context: nil)
            
            return CGSize(width: view.frame.width, height: estimatedFrame.height + 66)
        }
       
        
        return CGSize(width: view.frame.width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 70)
    }
    
    
    
}
