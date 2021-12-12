//
//  ViewController.swift
//  HomeWork22
//
//  Created by Михаил Куприянов on 12.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var labelRedSliderName: UILabel!
    @IBOutlet weak var labelGreenSliderName: UILabel!
    @IBOutlet weak var labelBlueSliderName: UILabel!
    
    @IBOutlet weak var labelRedSliderValue: UILabel!
    @IBOutlet weak var labelGreenSliderValue: UILabel!
    @IBOutlet weak var labelBlueSliderValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.backgroundColor = .white
        mainView.layer.cornerRadius = 10
        view.backgroundColor = .blue
        
        labelRedSliderName.text = "Red"
        labelRedSliderName.textColor = .white
        labelGreenSliderName.text = "Green"
        labelGreenSliderName.textColor = .white
        labelBlueSliderName.text = "Blue"
        labelBlueSliderName.textColor = .white
        
        labelRedSliderValue.text = "1.00"
        labelRedSliderValue.textColor = .white
        labelRedSliderValue.textAlignment = .right
        labelGreenSliderValue.text = "1.00"
        labelGreenSliderValue.textColor = .white
        labelGreenSliderValue.textAlignment = .right
        labelBlueSliderValue.text = "1.00"
        labelBlueSliderValue.textColor = .white
        labelBlueSliderValue.textAlignment = .right
        
        redSlider.value = 1
        redSlider.minimumValue = 0
        redSlider.maximumValue = 100
        redSlider.thumbTintColor = .red
        greenSlider.value = 1
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 100
        greenSlider.thumbTintColor = .green
        blueSlider.value = 1
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 100
        blueSlider.thumbTintColor = .blue

        
    }


}

