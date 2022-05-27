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
    @IBOutlet weak var tagViewHeight: NSLayoutConstraint!
    
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var tagLeadingSpce: NSLayoutConstraint!
    var tagNameColor:UIColor?
     var tagBackgroundColor:UIColor?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCell()
    }
    
   private func setUpCell(){
       print("setUpCell called")
       tagBackgroundView.layer.cornerRadius = tagViewHeight.constant / 2
       tagBackgroundView.backgroundColor = tagBackgroundColor ?? .darkGray
       contentView.backgroundColor = .clear
       tagNameLabel.textColor = tagNameColor ?? .white
    }

}
