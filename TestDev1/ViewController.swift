//
//  ViewController.swift
//  TestDev1
//
//  Created by gleb on 04/04/2024.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
        
    @IBAction func playButton(_ sender: Any) {
        
        let url = Bundle.main.url(forResource: "sample", withExtension: "mov")
        let avPlayer = AVPlayer(url: url!)
        let avController = AVPlayerViewController()
        avController.player = avPlayer
        present(avController, animated: true) {
            avPlayer.play()
            
        }
        
    }
    
}
