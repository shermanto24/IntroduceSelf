//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Stefani Hermanto on 1/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!

    @IBOutlet weak var numberOfPetsLabel: UILabel!

    @IBOutlet weak var lavenderBackgroundSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /*
        morePetsSwitch.isOn = false
        lavenderBackgroundSwitch.isOn = false*/
    }

    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        // Lets us choose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third, or fourth
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets."
        
        // Creates the alert where we pass in our message, which is our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
            // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func lavenderBackgroundDidPressed(_ sender: UISwitch) {
        if sender.isOn
        {
            view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 1, alpha: 1)
        }
        else
        {
            view.backgroundColor = .white
        }
    }
}

