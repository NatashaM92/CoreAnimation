//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Наталья Миронова on 15.01.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var runSpringButton: UIButton!
    
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springAnimationView.layer.cornerRadius = 10
        runSpringButton.layer.cornerRadius = 10
        runSpringButton.setTitle("Run", for: .normal)
        firstAnimation()
    }
    
    @IBAction func runSpringAnimationButton() {
        firstAnimation()
        springAnimationView.animate()
        animation = Animation.getAnimation()
        runSpringButton.setTitle("\(animation.preset)", for: .normal)
    }
    
    private func firstAnimation() {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        
        presetLabel.text = "preset: \(springAnimationView.animation)"
        curveLabel.text = "curve: \(springAnimationView.curve)"
        forceLabel.text = "force: \(String(format: "%.2f", springAnimationView.force))"
        durationLabel.text = "duration: \(String(format: "%.2f", springAnimationView.duration))"
        delayLabel.text = "delay: \(String(format: "%.2f", springAnimationView.delay))"
    }
}
