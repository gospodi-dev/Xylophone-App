//
//  ViewController.swift
//  Xylophone App
//
//  Created by Gospodi on 28.01.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view. (Выполните любую дополнительную настройку после загрузки представления.)
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound()
        
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
}

