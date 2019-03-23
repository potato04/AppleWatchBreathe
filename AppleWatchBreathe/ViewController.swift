//
//  ViewController.swift
//  AppleWatchBreathe
//
//  Created by potato04 on 2019/3/8.
//  Copyright © 2019年 potato04. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let breatheView = BreathView(frame: CGRect.zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(breatheView)
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(viewTapped(sender :)))
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    override func viewDidLayoutSubviews() {
        breatheView.frame = view.bounds
    }
    
    override func viewDidAppear(_ animated: Bool) {
        breatheView.animate()
    }
    
    @objc func viewTapped(sender: UITapGestureRecognizer?) {
        breatheView.animate()
    }
}

