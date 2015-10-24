//
//  CustomMemeCell.swift
//  MemeMe
//
//  Created by Ahmed Onawale on 10/22/15.
//  Copyright © 2015 Ahmed Onawale. All rights reserved.
//

import UIKit

class CustomMemeCell: UITableViewCell {
    
    @IBOutlet weak var topBottomLabel: UILabel!
    @IBOutlet weak var memedImageView: UIImageView!
    
    var meme: Meme? {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        if let meme = meme as Meme? {
            topBottomLabel.text = "\(meme.topText)...\(meme.bottomText)"
            memedImageView.image = meme.memedImage
        }
    }
    
}
