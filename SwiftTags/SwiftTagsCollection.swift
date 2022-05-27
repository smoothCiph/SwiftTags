//
//  SwiftTagsCollection.swift
//  SwiftTags
//
//  Created by MONO-HYD-MAC-11 on 13/05/22.
//

import Foundation
import UIKit



open class SwiftTagsCollection:UICollectionView{
    
   
    public var items = [String](){
        didSet{
            print("items Set")
            self.reloadData()
        }
    }
    
    
    public var rowCount:CGFloat = 3{
    didSet{
        print("rowCount Set")
        self.reloadData()
    }
    }
    
    public var tagViewHeight:CGFloat = 40{
        didSet{
            print("tagViewHeight Set")
            
            self.reloadData()
        }
    }
    
    public var tagLeadingSpace:CGFloat = 10
    
    public var itemHeight:CGFloat = 50.0{
        didSet{
            print("itemHeight Set")
            self.reloadData()
        }
    }
    
    public var tagNameColor:UIColor? = .white
    
    public var tagBackgroundColor:UIColor? = .darkGray
   
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setUp()
    }
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.setUp()
    }
    
    
    private func setUp() {
        let bundle = Bundle(identifier: "Rohan.SwiftTags")
        self.register(UINib(nibName: "TagCollectionCell", bundle: bundle), forCellWithReuseIdentifier: "TagCollectionCell")
           dataSource = self
        delegate = self
     
       }
    
    
  @objc func deleteTag(sender:UIButton){
        items.remove(at: sender.tag)
        self.reloadData()
    }
    
}

extension SwiftTagsCollection : UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagCollectionCell", for: indexPath) as! TagCollectionCell
        cell.deleteButton.tag = indexPath.item
        cell.tagViewHeight.constant = tagViewHeight
        cell.deleteButton.addTarget(self, action: #selector(deleteTag(sender:)), for: .touchUpInside)
        cell.tagNameColor = self.tagNameColor ?? .white
        cell.tagBackgroundColor = self.tagBackgroundColor ?? .black
        cell.tagNameLabel.text = items[indexPath.item]
        
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: tagViewHeight + 10)
    }

    
    
   
}
