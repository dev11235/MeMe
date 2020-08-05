//
//  MemeDetailViewController.swift
//  MemeMe
//
//  Created by Mikhail on 8/5/20.
//  Copyright © 2020 112358dev. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var meme: Meme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.imageView.image = self.meme.memedImage
    }

}
