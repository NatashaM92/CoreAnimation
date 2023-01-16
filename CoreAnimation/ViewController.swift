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
        runSpringButton.setTitle("\(randomAnimationPresentNext())", for: .normal)
        
        }
    
    private func firstAnimation() {
        springAnimationView.animation = randomAnimationPreset()
        springAnimationView.curve = randomAnimationCurve()
        springAnimationView.force = randomForceValue()
        springAnimationView.duration = randomDurationValue()
        springAnimationView.delay = randomDelayValue()
        
        
        presetLabel.text = "preset: \(springAnimationView.animation)"
        curveLabel.text = "curve: \(springAnimationView.curve)"
        forceLabel.text = "force: \(String(format: "%.2f", springAnimationView.force))"
        durationLabel.text = "duration: \(String(format: "%.2f", springAnimationView.duration))"
        delayLabel.text = "delay: \(String(format: "%.2f", springAnimationView.delay))"
    }
    
//    private func nextAnimation()  {
//        springAnimationView.animation = randomAnimationPresentNext()
//        springAnimationView.curve = randomAnimationCurve()
//        springAnimationView.force = randomForceValue()
//        springAnimationView.duration = randomDurationValue()
//        springAnimationView.delay = randomDelayValue()
//
//
//        presetLabel.text = "preset: \(springAnimationView.animation)"
//        curveLabel.text = "curve: \(springAnimationView.curve)"
//        forceLabel.text = "force: \(String(format: "%.2f", springAnimationView.force))"
//        durationLabel.text = "duration: \(String(format: "%.2f", springAnimationView.duration))"
//        delayLabel.text = "delay: \(String(format: "%.2f", springAnimationView.delay))"
//
//    }
    
    
    private func randomAnimationPreset() -> String {
       let randomPreset = AnimationPreset.allCases.randomElement()?.rawValue
       let preset = randomPreset ?? ""
        return preset
        
    }
    
    private func randomAnimationPresentNext() -> String {
        let randomPresetNext = AnimationPreset.allCases.randomElement()?.rawValue
        let presetNext = randomPresetNext ?? ""
        return presetNext
        
    }
    
    private func randomAnimationCurve() -> String {
        let randomCurve = AnimationCurve.allCases.randomElement()?.rawValue
        let curve = randomCurve ?? ""
        return curve
    }
    
    private func randomForceValue() -> CGFloat {
       CGFloat(Float.random(in: 1.0...5.0))
    }
    
    private func randomDurationValue() -> CGFloat {
        CGFloat(Float.random(in: 0.5...5.0))
     }
    
    private func randomDelayValue() -> CGFloat {
        CGFloat(Float.random(in: 0.0...5.0))
     }
    }
    

