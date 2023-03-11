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
        case 0: mapView.mapType = .standard
        case 1: mapView.mapType = .hybrid
        case 2: mapView.mapType = .satellite
            
        default: break
        }
    }
    
    // MARK: - Setup UI Helper Functions
    
    private func setupUI() {
        setupSegmentedControl()
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
}
