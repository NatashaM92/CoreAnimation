//
//  AnimationModel.swift
//  CoreAnimation
//
//  Created by Наталья Миронова on 16.01.2023.
//

import Foundation

struct Animation {
    
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getAnimation() -> Animation {
        
        let dataManager = DataManager()
        
        let animation = Animation(preset: dataManager.animations.randomElement()?.rawValue ?? "",
                                  curve: dataManager.curve.randomElement()?.rawValue ?? "",
                                  force:  CGFloat(Float.random(in: 1.0...5.0)),
                                  duration: CGFloat(Float.random(in: 0.5...5.0)),
                                  delay: CGFloat(Float.random(in: 0.0...5.0)))
        return animation
    }
}
