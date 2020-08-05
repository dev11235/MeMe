//
//  SMTableViewController.swift
//  MemeMe
//
//  Created by Mikhail on 7/21/20.
//  Copyright © 2020 112358dev. All rights reserved.
//

import UIKit

class SMTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    @IBAction func addMeme(_ sender: Any) {
        MemeUtilities.presentMemeViewController(self)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Meme.allMemes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SMTableCell") as! SMTableCell
        let meme = Meme.allMemes[indexPath.row]
        cell.topLabel?.text = meme.topPhrase
        cell.bottomLabel?.text = meme.bottomPhrase
        cell.memeImageView?.image = meme.memedImage
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        MemeUtilities.pushMemeDetailViewController(Meme.allMemes[indexPath.row], self)
    }
    
}
