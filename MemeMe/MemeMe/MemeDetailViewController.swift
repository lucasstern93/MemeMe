//
//  MemeDetailViewController.swift
//  MemeMe
//
//  Created by Lucas Stern on 15/04/2018.
//  Copyright © 2018 Suadao. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {

    @IBOutlet weak var imageDetail: UIImageView!
    var meme: MemeMe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageDetail.image = meme?.memedImage
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tabBarController?.tabBar.isHidden = true
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
}
