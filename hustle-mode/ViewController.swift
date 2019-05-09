//
//  ViewController.swift
//  hustle-mode
//
//  Created by LIN2 on 5/4/19.
//  Copyright © 2019 LIN2. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var coudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var onLbl: UILabel!
    
    var player: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
      let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do{
            player = try AVAudioPlayer(contentsOf:url)
            player.prepareToPlay()
        } catch let error as NSError{
            print(error.description)
        }
    }

    @IBAction func powerBtnPressed(_ sender: Any) {
        coudHolder.isHidden=false
        darkBlueBG.isHidden=true
        powerButton.isHidden=true
        
        player.play()
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 50, width: 414, height: 619)
        }) { (finished) in
            self.hustleLbl.isHidden = false
            self.onLbl.isHidden = false
        }
        }
    }
    


