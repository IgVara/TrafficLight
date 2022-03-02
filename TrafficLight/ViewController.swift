//
//  ViewController.swift
//  TrafficLight
//
//  Created by Игорь Варакутин on 02.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var greenLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var redLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLightColor = CurrentLightColor.red
    enum CurrentLightColor {
        case red, yellow, green
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        redLight.layer.cornerRadius = 70
        yellowLight.layer.cornerRadius = 70
        greenLight.layer.cornerRadius = 70
        startButton.setTitle("START", for: .normal)
        
    }
    
    
    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        switch currentLightColor {
        case .red:
            greenLight.alpha = 0.3
            redLight.alpha = 1
            currentLightColor = .yellow
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            currentLightColor = .green
        case .green:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            currentLightColor = .red
        }
    }
    
}
