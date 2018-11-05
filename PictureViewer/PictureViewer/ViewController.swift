//
//  ViewController.swift
//  PictureViewer
//
//  Created by student on 10/30/18.
//  Copyright © 2018 HOTT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pictureView: UIImageView!
    
    @IBAction func scaleImage(_ sender: UIPinchGestureRecognizer) {
        if sender.state == UIGestureRecognizerState.changed
        {
            pictureView.transform =
                pictureView.transform.scaledBy(x: sender.scale,
                                               y: sender.scale)
            
            sender.scale = 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

