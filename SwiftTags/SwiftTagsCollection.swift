//
//  SwiftTagsCollection.swift
//  SwiftTags
//
//  Created by MONO-HYD-MAC-11 on 13/05/22.
//

import Foundation
import UIKit



public class SwiftTagsCollection:UICollectionView{
    
    public var items = [String]()
    
    
   
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setUp()
    }
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.setUp()
    }
    
    
    private func setUp() {
        self.register(UINib(nibName: "TagCollectionCell", bundle: Bundle(identifier: "Rohan.SwiftTags")), forCellWithReuseIdentifier: "TagCollectionCell")
           dataSource = self
        
        reloadData()
        
       }
    
    func reloadCollection(){
        self.reloadData()
    }
       
    
}

extension SwiftTagsCollection : UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagCollectionCell", for: indexPath) as! TagCollectionCell
        
        return cell
    }
    
   
}
