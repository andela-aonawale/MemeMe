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
    @IBAction func edit(sender: UIBarButtonItem) {
        performSegueWithIdentifier("Edit Meme", sender: meme!)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        memedImageView.image = meme!.memedImage!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Edit Meme" {
            let navigationController = segue.destinationViewController as! UINavigationController
            let controller = navigationController.topViewController as! CreateMemeViewController
            controller.memeToEdit = sender as? Meme
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
