//
//  WeatherViewController.swift
//  JustSimpleWeather
//
//  Created by Min on 12/12/24.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImageVIew: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    let citys = ["Seoul", "Tokyo", "LA", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]

    
    @IBAction func changeButtonTapped(_ sender: Any) {
        
        cityLabel.text = citys.randomElement()
        
        let imageName = weathers.randomElement()!
        weatherImageVIew.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 10..<30)
        temperatureLabel.text = "\(randomTemp)°"
        
        
        print("도시, 온도, 날씨 이미지 변경하자!!")
    }
    
}
