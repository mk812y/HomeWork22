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
    
    private let minimumTrackTintColor = UIColor.cyan
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 10
        view.backgroundColor = .systemBlue
        
        labelRedSliderName.text = "Red:"
        labelRedSliderName.textColor = .white
        labelGreenSliderName.text = "Green:"
        labelGreenSliderName.textColor = .white
        labelBlueSliderName.text = "Blue:"
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
        redSlider.maximumValue = 255
        redSlider.thumbTintColor = .red
        redSlider.minimumTrackTintColor = minimumTrackTintColor
        greenSlider.value = 1
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.thumbTintColor = .green
        greenSlider.minimumTrackTintColor = minimumTrackTintColor
        blueSlider.value = 1
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.thumbTintColor = .blue
        blueSlider.minimumTrackTintColor = minimumTrackTintColor
        
        mainView.backgroundColor = UIColor(red: 1/255, green: 1/255, blue: 1/255, alpha: 1)

    }

    @IBAction func actionSliderRed(_ sender: UISlider) {
        let currencyGreenSliderValue = Double(round(100 * CGFloat(greenSlider.value)) / 100)
        let currencyBlueSliderValue = Double(round(100 * CGFloat(blueSlider.value)) / 100)
        let redSliderValue = Double(round(100 * CGFloat(redSlider.value)) / 100)
        mainView.backgroundColor = UIColor(red: redSliderValue/255, green: currencyGreenSliderValue/255, blue: currencyBlueSliderValue/255, alpha: 1)
        labelRedSliderValue.text = "\(redSliderValue)"
    }
    @IBAction func actionSliderGreen(_ sender: UISlider) {
        let currencyRedSliderValue = Double(round(100 * CGFloat(redSlider.value)) / 100)
        let currencyBlueSliderValue = Double(round(100 * CGFloat(blueSlider.value)) / 100)
        let greenSliderValue = Double(round(100 * CGFloat(greenSlider.value)) / 100)
        mainView.backgroundColor = UIColor(red: currencyRedSliderValue/255, green: greenSliderValue/255, blue: currencyBlueSliderValue/255, alpha: 1)
        labelGreenSliderValue.text = "\(greenSliderValue)"
    }
    @IBAction func actionSliderBlue(_ sender: UISlider) {
        let currencyRedSliderValue = Double(round(100 * CGFloat(redSlider.value)) / 100)
        let currencyGreenSliderValue = Double(round(100 * CGFloat(greenSlider.value)) / 100)
        let blueSliderValue = Double(round(100 * CGFloat(blueSlider.value)) / 100)
        mainView.backgroundColor = UIColor(red: currencyRedSliderValue/255, green: currencyGreenSliderValue/255, blue: blueSliderValue/255, alpha: 1)
        labelBlueSliderValue.text = "\(blueSliderValue)"
    }
    
}

