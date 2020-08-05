//
//  MemeUtilities.swift
//  MemeMe
//
//  Created by Mikhail on 8/5/20.
//  Copyright © 2020 112358dev. All rights reserved.
//

import Foundation
import UIKit

class MemeUtilities {
    static func pushMemeDetailViewController(_ meme: Meme, _ currentUIViewController: UIViewController) {
        let detailController = currentUIViewController.storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        detailController.meme = meme
        currentUIViewController.navigationController!.pushViewController(detailController, animated: true)
    }
    
    static func presentMemeViewController(_ currentUIViewController: UIViewController) {
        let memeViewController = currentUIViewController.storyboard!.instantiateViewController(withIdentifier: "MemeViewController")
        memeViewController.modalPresentationStyle = .fullScreen
        currentUIViewController.present(memeViewController, animated: true, completion: nil)
    }
}
