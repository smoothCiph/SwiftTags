//
//  tagCollectionCell.swift
//  SwiftTags
//
//  Created by MONO-HYD-MAC-11 on 06/05/22.
//

import UIKit

class TagCollectionCell: UICollectionViewCell {

    
    @IBOutlet weak var tagBackgroundView: UIView!
    @IBOutlet weak var tagNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCell()
    }
    
   private func setUpCell(){
       tagBackgroundView.layer.cornerRadius = tagBackgroundView.frame.height / 2
    }

}
