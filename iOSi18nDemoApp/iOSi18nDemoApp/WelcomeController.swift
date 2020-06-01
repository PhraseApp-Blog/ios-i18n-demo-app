//
//  ViewController.swift
//  iOSi18nDemoApp
//
//  Created by Onyekachi Ezeoke on 01/06/2020.
//  Copyright © 2020 Onyekachi Ezeoke. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {
 
@IBOutlet weak var exploreButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    @IBAction func exploreButtonPressed(_ sender: UIButton) {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionHeadersPinToVisibleBounds = true
        layout.sectionInsetReference = .fromSafeArea
        let homeController = HomeController(collectionViewLayout: layout)
        homeController.modalPresentationStyle = .fullScreen
        present(homeController, animated: true, completion: nil)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func setupViews() {
        exploreButton.setTitle("Explore", for: .normal)
        exploreButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        exploreButton.backgroundColor = .red
        exploreButton.layer.cornerRadius = exploreButton.frame.height / 2
        exploreButton.layer.masksToBounds = true
    }
}

