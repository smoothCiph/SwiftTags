//
//  TagsView.swift
//  SwiftTags
//
//  Created by MONO-HYD-MAC-11 on 06/05/22.
//

import UIKit

@IBDesignable class TagsView: UIView {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var itemWidth  = 100
    var itemHeight = 40
    
    var items = [String]()
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initTags()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initTags()
        
    }
    
    private func initTags(){
        let nib = UINib(nibName: "TagsView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        collectionView.backgroundColor = .blue
    }
    

    
    
}
extension TagsView:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagCollectionCell", for: indexPath) as! TagCollectionCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: itemWidth, height: itemHeight)
    }
    
    
}
