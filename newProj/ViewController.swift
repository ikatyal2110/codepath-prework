//
//  ViewController.swift
//  newProj
//
//  Created by ishaan katyal on 09/07/2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    
    var audioPlayer: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let soundURL = Bundle.main.url(forResource: "mixkit-arcade-game-jump-coin-216", withExtension: "mp3") else {
                return
            }

            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            } catch {
                print("Error loading sound effect")
            }
        
    }
    
    func changeColor() -> UIColor{

            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        audioPlayer?.play()
        let randomColor = changeColor()
        //let randColor = changeColor()
            view.backgroundColor = randomColor
        
    }
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        audioPlayer?.play()
        let randomColor = changeColor()
        myLabel1.textColor = randomColor
        myLabel2.textColor = randomColor
        myLabel3.textColor = randomColor
    }
    
    

}

