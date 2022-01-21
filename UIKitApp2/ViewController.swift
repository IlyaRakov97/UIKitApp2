//
//  ViewController.swift
//  UIKitApp2
//
//  Created by Илья Раков on 20.01.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() { //Все что мы делаем в этом методе пользователь не увидит.
        
        //LABEL
        
        super.viewDidLoad()
        mainLabel.text = String(slider.value)
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        //SIGMENTD CONTROL
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        //SLIDER
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .blue
        
    }
    @IBAction func segmentedControlAction() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The first segment in selected"
            mainLabel.textColor = .yellow
        case 1:
            mainLabel.text = "The second segment in selected"
            mainLabel.textColor = .blue
        default:
            mainLabel.text = "The three segment in selected"
            mainLabel.textColor = .red
        }
        }
    @IBAction func sliderAction() {
        mainLabel.text = String(slider.value)
        let sliderValue = CGFloat(slider.value)
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(sliderValue)
    }
    @IBAction func buttonPressedAction() {
        mainLabel.text = textField.text
    }
    
    
    
    
    
    }
    



