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
        
        playSound(soundName: sender.currentTitle!)
        
        // Уменьшает непрозрачность отправителя (кнопки, которая была нажата) до половины.
        sender.alpha = 0.5
        
        // Код должен выполняться с задержкой в 0,2 секунды
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            // Вернуть непрозрачность отправителя к полной непрозрачности
            sender.alpha = 1.0
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
}

