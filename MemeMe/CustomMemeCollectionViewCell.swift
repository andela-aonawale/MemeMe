//
//  CustomMemeCollectionViewCell.swift
//  MemeMe
//
//  Created by Ahmed Onawale on 10/24/15.
//  Copyright © 2015 Ahmed Onawale. All rights reserved.
//

import UIKit

class CustomMemeCollectionViewCell: UICollectionViewCell {
    
    var meme: Meme? {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        if let meme = meme as Meme? {
            self.backgroundView = UIImageView(image: meme.memedImage)
        }
    }
    
}
