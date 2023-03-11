//
//
// WorldTrotter-BNR
// 
// ConversionViewController.swift
//
// Created by Royal Blue Software
// 


import UIKit

class ConversionViewController: UIViewController {

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Chapter 3 Silver Challenge - Add Gradient Layer
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.green.cgColor, UIColor.yellow.cgColor, UIColor.orange.cgColor, UIColor.red.cgColor, UIColor.purple.cgColor]
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
