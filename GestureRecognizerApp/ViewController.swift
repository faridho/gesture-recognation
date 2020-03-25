//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Faridho on 13/03/20.
//  Copyright © 2020 Faridho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isCat = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic() {
        if isCat == true {
            imageView.image = UIImage(named: "cat")
            myLabel.text = "Cat"
            isCat = false
        } else {
            imageView.image = UIImage(named: "dog")
            myLabel.text = "Dog"
            isCat = true
        }
    }


}

