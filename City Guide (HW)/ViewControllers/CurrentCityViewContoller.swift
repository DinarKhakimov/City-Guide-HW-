//
//  CurrentCityViewContoller.swift
//  City Guide (HW)
//
//  Created by Johnny Boshechka on 1/5/22.
//

import Foundation
import UIKit

class CurrentCityViewController: UIViewController {
    
    let currentCity = City.getCity()
    
    @IBOutlet weak var currentCityView: UIImageView!
    @IBOutlet weak var populationLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var foundedDateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCity()
    }
    
    private func setupCity() {
        navigationItem.title = currentCity.name
        currentCityView.image = UIImage(named: currentCity.image)
        populationLabel.text = String(currentCity.population)
        areaLabel.text = String(currentCity.area)
        foundedDateLabel.text = String(currentCity.foundedDate)
    }
}
