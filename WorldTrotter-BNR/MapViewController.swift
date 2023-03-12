//
//
// WorldTrotter-BNR
// 
// MapViewController.swift
//
// Created by Royal Blue Software
// 


import UIKit
import MapKit

class MapViewController: UIViewController {
    
    // MARK: - UI Properties
    
    var mapView: MKMapView!
    let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
    let pointsOfInterestLabel = UILabel()
    let pointsOfInterestSwitch = UISwitch()
    
    // MARK: - View Life Cycle
    
    override func loadView() {
        // create mapView (instantiate)
        mapView = MKMapView()
        // set MapViewController *view* as mapView
        view = mapView
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    // MARK: - Segmented Control Actions
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
            pointsOfInterestLabel.textColor = .black
            
        case 1:
            mapView.mapType = .hybrid
            pointsOfInterestLabel.textColor = .white
            
        case 2:
            mapView.mapType = .satellite
            pointsOfInterestLabel.textColor = .white
            
        default: break
        }
    }
    
    // MARK: - Points of Interest Switch Actions
    
    @objc func switchToggled(_ poiSwitch: UISwitch) {
        switch poiSwitch.isOn {
        case true:
            mapView.pointOfInterestFilter = MKPointOfInterestFilter.includingAll
 
        case false:
            mapView.pointOfInterestFilter = MKPointOfInterestFilter.excludingAll
        }
    }
    
    // MARK: - Setup UI Helper Functions
    
    private func setupUI() {
        setupSegmentedControl()
        setupPointsOfInterestLabel()
        setupPointsOfInterestSwitch()
    }
    
    private func setupSegmentedControl() {
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.backgroundColor = .systemBackground
        segmentedControl.selectedSegmentIndex = 0
        
        view.addSubview(segmentedControl)
        
        // segmentedControl target selection action call
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        
        NSLayoutConstraint.activate([
            segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            segmentedControl.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            segmentedControl.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
    }
    
    private func setupPointsOfInterestLabel() {
        pointsOfInterestLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pointsOfInterestLabel)
        
        pointsOfInterestLabel.text = "Points of Interest"
        
        NSLayoutConstraint.activate([
            pointsOfInterestLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 12),
            pointsOfInterestLabel.leadingAnchor.constraint(equalTo: segmentedControl.leadingAnchor, constant: 4),
        ])
    }
    
    private func setupPointsOfInterestSwitch() {
        pointsOfInterestSwitch.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pointsOfInterestSwitch)
        
        pointsOfInterestSwitch.addTarget(self, action: #selector(switchToggled(_:)), for: .valueChanged)
        
        NSLayoutConstraint.activate([
            pointsOfInterestSwitch.centerYAnchor.constraint(equalTo: pointsOfInterestLabel.centerYAnchor),
            pointsOfInterestSwitch.leadingAnchor.constraint(equalTo: pointsOfInterestLabel.trailingAnchor, constant: 8)
        ])
    }
}
