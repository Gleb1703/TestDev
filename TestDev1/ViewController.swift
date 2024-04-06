//
//  ViewController.swift
//  TestDev1
//
//  Created by gleb on 04/04/2024.
//

import SwiftUI
import UIKit
import AVKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func playButton(_ sender: Any) {
        
        let url = Bundle.main.url(forResource: "sample", withExtension: "mov")
        let avPlayer = AVPlayer(url: url!)
        let avController = AVPlayerViewController()
        avController.player = avPlayer
        avController.showsPlaybackControls = false
        avController.videoGravity = .resizeAspectFill
        
        let hostViewController = UIHostingController(rootView: SampleView())
        avController.addChild(hostViewController)
        avController.view.addSubview(hostViewController.view)
        hostViewController.view.frame = avController.view.bounds
        hostViewController.didMove(toParent: avController)
        
        
        present(avController, animated: true) {
            avPlayer.play()
            
        }
        
    }
    
}
