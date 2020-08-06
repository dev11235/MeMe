//
//  Meme.swift
//  MemeMe
//
//  Created by Mikhail on 6/21/20.
//  Copyright © 2020 112358dev. All rights reserved.
//

import Foundation
import UIKit

struct Meme {
    let topPhrase: String
    let bottomPhrase: String
    let originalImage: UIImage
    let memedImage: UIImage
}

extension Meme {
    static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    static func countMemes() -> Int {
        return appDelegate.memes.count
    }
    
    static func addNewMeme(_ meme: Meme) {
        appDelegate.memes.append(meme)
    }
    
    static func findMeme(_ index: Int) -> Meme {
        return appDelegate.memes[index]
    }
}
