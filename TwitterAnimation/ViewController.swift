//
//  ViewController.swift
//  TwitterAnimation
//
//  Created by Sam Greenhill on 8/22/19.
//  Copyright © 2019 simplyAmazingMachines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let imageView: UIImageView = {
       let iv = UIImageView()
        iv.isUserInteractionEnabled = true
        iv.image = UIImage(named: "tile00")
        //so xcode doesnt create its own constraints.
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animate)))
        imageView.heightAnchor.constraint(equalToConstant: 75).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 75).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        for i in 0..<29 {
            spriteImages.append(UIImage(named: "tile0\(i)")!)
        }
    }

    var spriteImages = [UIImage]()
    
    @objc func animate() {
        print("Trying to animate image")
        imageView.animationImages = spriteImages
        imageView.animationDuration = 0.6
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }

}

