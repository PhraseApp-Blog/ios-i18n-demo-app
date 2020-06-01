//
//  HomeController.swift
//  iOSi18nDemoApp
//
//  Created by Onyekachi Ezeoke on 01/06/2020.
//  Copyright © 2020 Onyekachi Ezeoke. All rights reserved.
//

import UIKit

enum Planets: String {
    case mercury
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case neptune
    case uranus
    case pluto
}

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = #colorLiteral(red: 0.2196078431, green: 0.08235294118, blue: 0.03921568627, alpha: 1)
        self.collectionView!.register(HomeCell.self, forCellWithReuseIdentifier: HomeCell.reuseIdentifier)
        self.collectionView!.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderView.reuseIdentifier)
    }
    
    let planets: [String] = [Planets.mercury.rawValue,
                             Planets.venus.rawValue,
                             Planets.earth.rawValue,
                             Planets.mars.rawValue,
                             Planets.jupiter.rawValue,
                             Planets.saturn.rawValue,
                             Planets.neptune.rawValue,
                             Planets.uranus.rawValue,
                             Planets.pluto.rawValue
    ]
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
         return .lightContent
     }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCell.reuseIdentifier, for: indexPath) as! HomeCell
        let planetName = planets[indexPath.row]
        let image = UIImage(named: planetName)
        cell.imageView.image = image
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderView.reuseIdentifier, for: indexPath) as! HeaderView
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let width = collectionView.bounds.width
        return CGSize(width: width, height: 50)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width - 32
        return CGSize(width: width, height: 218)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
}
