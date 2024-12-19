//
//  HourlyForecastCell.swift
//  ForecastApp
//
//  Created by David Sanchez on 13/12/24.
//

import UIKit

class HourlyForecastCell: UICollectionViewCell {
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    func configure(with forecast: ForecastCell) {
        timeLabel.text = forecast.time
        temperatureLabel.text = forecast.temperature
        weatherImageView.image = UIImage(systemName: forecast.weatherIconName)
        // Fondo oscuro de la celda
        
        self.layer.cornerRadius = 10 // Bordes redondeados
        self.layer.masksToBounds = true
       
    }
}
