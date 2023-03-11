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
        
        print("MapViewController loaded its view")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.backgroundColor = .randomColor()
    }
    
}

// MARK: - Extension
// chapter 4 Silver Challenge - Random Color Background

extension UIColor {
    static func randomColor(randomOpacity: Bool = false) -> UIColor {
        UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: randomOpacity ? .random(in: 0...1) : 1)
    }
}
