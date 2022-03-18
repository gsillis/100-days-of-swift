//
//  ViewController.swift
//  Project2
//
//  Created by Gabriela Sillis on 14/03/22.
//

import UIKit

final class CountriesViewController: UIViewController {

    // Mark: - Properties
    @IBOutlet private weak var buttonOne: UIButton!
    @IBOutlet private weak var buttonTwo: UIButton!
    @IBOutlet private weak var buttonThree: UIButton!
    
    private let controller = CountriesController()
    
    // Mark: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        controller.createCountriesArray()
    }
}

