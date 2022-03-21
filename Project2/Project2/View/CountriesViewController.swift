//
//  CountriesViewController.swift
//  Project2
//
//  Created by Gabriela Sillis on 14/03/22.
//

import UIKit

class CountriesViewController: UIViewController {
    
    // Mark: - Properties
    @IBOutlet private weak var buttonOne: UIButton!
    @IBOutlet private weak var buttonTwo: UIButton!
    @IBOutlet private weak var buttonThree: UIButton!
    
    private let controller = CountriesController()
    
    // Mark: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtonLayout()
        controller.createCountriesArray()
        askQuestion()
    }
    
    // Mark: Class methods
    private func configureButtonLayout() {
        buttonOne.layer.borderWidth = 1
        buttonTwo.layer.borderWidth = 1
        buttonThree.layer.borderWidth = 1
        buttonOne.layer.borderColor = UIColor.lightGray.cgColor
        buttonTwo.layer.borderColor = UIColor.lightGray.cgColor
        buttonThree.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    private func askQuestion(action: UIAlertAction? = nil) {
        controller.countries.shuffle()
        buttonOne.setImage(UIImage(named: controller.countries[0]), for: .normal)
        buttonTwo.setImage(UIImage(named: controller.countries[1]), for: .normal)
        buttonThree.setImage(UIImage(named: controller.countries[2]), for: .normal)
        controller.correctAnswer()
        title = controller.countries[controller.answer].uppercased()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        checkAnswer(sender: sender)
    }
    
    private func alert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction( UIAlertAction(title: "Continue", style: .default) { _ in
            self.askQuestion()
        })
        present(alert, animated: true)
    }
    
    private func checkAnswer(sender: UIButton) {
        var title: String
        if sender.tag == controller.answer {
            title = "Correct"
            controller.score += 1
        } else {
            title = "Wrong"
            controller.score -= 1
        }
        alert(title: title, message: "Your score is \(controller.score).")
    }
}

