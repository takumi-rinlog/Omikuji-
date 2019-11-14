//
//  ViewController.swift
//  Omikuji
//
//  Created by HT-19R1108 on 2019/11/14.
//  Copyright © 2019 HT-19R1108. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    @IBOutlet weak var lbAns: UILabel!
    
    @IBOutlet weak var lbhyde: UILabel!
    
    var ssId01: SystemSoundID = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initSoundEffect()
    }
    

    @IBAction func btKuji(_ sender: Any) {
        let v01 = ["大吉", "中吉", "小吉","吉", "凶", " 大凶"]
        let str = v01.randomElement()
        lbAns.text = str
        lbhyde.text = ""
        AudioServicesPlaySystemSound(ssId01)
        }
    
    // 効果音　初期化処理
    func initSoundEffect() {
        let bnd = Bundle.main
        let url01 = bnd.url(forResource: "decision22", withExtension: "mp3")
        
        AudioServicesCreateSystemSoundID(url01! as CFURL, &ssId01)
    }
    
}

