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

    // MARK: - UI Properties
    
    let fahrenheitLabel = UILabel()
    let degreesFahrenheitLabel = UILabel()
    let isReallyLabel = UILabel()
    let degreesCelsiusLabel = UILabel()
    let celsiusLabel = UILabel()
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "offWhiteBackground")
        
        setupUI()
        layoutUI()
    }
    
    // MARK: - Setup UI Functions
    
    private func setupUI() {
        // fahrenheitLabel
         fahrenheitLabel.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(fahrenheitLabel)
         fahrenheitLabel.textAlignment = .center
         fahrenheitLabel.font = UIFont.systemFont(ofSize: 70)
         fahrenheitLabel.text = "212"
         fahrenheitLabel.textColor = UIColor(named: "burntOrange")
         
         // degreesFahrenheitLabel
         degreesFahrenheitLabel.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(degreesFahrenheitLabel)
         degreesFahrenheitLabel.textAlignment = .center
         degreesFahrenheitLabel.font = UIFont.systemFont(ofSize: 36)
         degreesFahrenheitLabel.text = "degrees Fahrenheit"
         degreesFahrenheitLabel.textColor = UIColor(named: "burntOrange")
         
         // isReallyLabel
         isReallyLabel.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(isReallyLabel)
         isReallyLabel.textAlignment = .center
         isReallyLabel.font = UIFont.systemFont(ofSize: 36)
         isReallyLabel.text = "is really"
         
         // celsiusLabel
         celsiusLabel.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(celsiusLabel)
         celsiusLabel.textAlignment = .center
         celsiusLabel.font = UIFont.systemFont(ofSize: 70)
         celsiusLabel.text = "100"
         celsiusLabel.textColor = UIColor(named: "burntOrange")
         
         // degreesCelsiusLabel
         degreesCelsiusLabel.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(degreesCelsiusLabel)
         degreesCelsiusLabel.textAlignment = .center
         degreesCelsiusLabel.font = UIFont.systemFont(ofSize: 36)
         degreesCelsiusLabel.text = "degrees Celsius"
         degreesCelsiusLabel.textColor = UIColor(named: "burntOrange")
    }
    
    // MARK: - Layout UI Functions
    
    private func layoutUI() {
        NSLayoutConstraint.activate([
            // fahrenheitLabel
            fahrenheitLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            fahrenheitLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // degreesFahrenheitLabel
            degreesFahrenheitLabel.topAnchor.constraint(equalTo: fahrenheitLabel.bottomAnchor, constant: 12),
            degreesFahrenheitLabel.centerXAnchor.constraint(equalTo: fahrenheitLabel.centerXAnchor),
            
            // isReallyLabel
            isReallyLabel.topAnchor.constraint(equalTo: degreesFahrenheitLabel.bottomAnchor, constant: 32),
            isReallyLabel.centerXAnchor.constraint(equalTo: fahrenheitLabel.centerXAnchor),
            
            // celsiusLabel
            celsiusLabel.topAnchor.constraint(equalTo: isReallyLabel.bottomAnchor, constant: 32),
            celsiusLabel.centerXAnchor.constraint(equalTo: fahrenheitLabel.centerXAnchor),

            // degreesCelsiusLabel
            degreesCelsiusLabel.topAnchor.constraint(equalTo: celsiusLabel.bottomAnchor, constant: 12),
            degreesCelsiusLabel.centerXAnchor.constraint(equalTo: fahrenheitLabel.centerXAnchor),
        ])
    }
}
