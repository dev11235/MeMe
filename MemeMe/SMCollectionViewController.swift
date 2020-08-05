//
//  SMCollectionViewController.swift
//  MemeMe
//
//  Created by Mikhail on 7/21/20.
//  Copyright © 2020 112358dev. All rights reserved.
//

import UIKit

class SMCollectionViewController: UICollectionViewController {
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let space: CGFloat = 3.0
        let dimension = (view.frame.width - 2 * space) / 3.0
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }
    
    @IBAction func addMeme(_ sender: Any) {
        MemeUtilities.presentMemeViewController(self)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Meme.allMemes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SMCollectionCell", for: indexPath) as! SMCollectionCell
        let meme = Meme.allMemes[indexPath.row]
        cell.imageView?.image = meme.memedImage
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath:IndexPath) {
        MemeUtilities.pushMemeDetailViewController(Meme.allMemes[indexPath.row], self)
    }

}
