//
//  ViewController.swift
//  Alien ImageViewer Timer 03
//
//  Created by dit03 on 2019. 3. 28..
//  Copyright © 2019년 201820028hy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AlienImageView: UIImageView!
    @IBOutlet weak var CountLabel: UILabel!
    var count = 1
    //Timer 객체 생성
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        AlienImageView.image = UIImage(named: "Image\(count)")
        CountLabel.text = String(count)
    }

    @IBAction func btnPlay(_ sender: Any) {
        //Timer작동
        myTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func btnPause(_ sender: Any) {
        myTimer.invalidate()
        
    }
    
    @IBAction func btnStop(_ sender: Any) {
        myTimer.invalidate()
        count = 0
        
    }
    
    @objc func  doAnimation() {
        if count == 5 {
            count = 0
        }
        count += 1
        AlienImageView.image = UIImage(named: "Image\(count)")
        CountLabel.text = String(count)
    }
    
}

