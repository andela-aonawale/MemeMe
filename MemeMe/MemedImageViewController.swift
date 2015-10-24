//
//  MemedImageViewController.swift
//  MemeMe
//
//  Created by Ahmed Onawale on 10/23/15.
//  Copyright © 2015 Ahmed Onawale. All rights reserved.
//

import UIKit

class MemedImageViewController: UIViewController {
    
    var meme: Meme?
    
    @IBOutlet weak var memedImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        memedImageView.image = meme!.memedImage!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Edit Meme" {
            let navigationController = segue.destinationViewController as! UINavigationController
            let controller = navigationController.topViewController as! CreateMemeViewController
            controller.memeToEdit = meme
        }
    }

}
