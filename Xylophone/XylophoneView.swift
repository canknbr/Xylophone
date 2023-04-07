//
//  ViewController.swift
//  Xylophone
//
//  Created by Can Kanbur on 7.04.2023.
//

import UIKit
import AVFoundation
class XylophoneView: UIViewController {

    var player: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickedButton(_ sender: UIButton) {
        print(sender.currentTitle)
        if let title = sender.currentTitle {
            playSound(title: title)
        }
    }
    
    func playSound(title:String) {
        guard let url = Bundle.main.url(forResource: title, withExtension: "wav") else {
            print("url not found")
            return
        }

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player!.play()
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
    }
    
}







