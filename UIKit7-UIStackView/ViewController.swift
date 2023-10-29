//
//  ViewController.swift
//  UIKit7-UIStackView
//
//  Created by Lautaro matias Lezana luna on 21/11/2022.
//

import UIKit

class ViewController: UIViewController {
    private let swiftbetaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "🤑 In App Purchases 🤑"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 32)
        return label
    }()
    
    private let swiftbetaStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(swiftbetaLabel)
        view.addSubview(swiftbetaStackView)
        
        NSLayoutConstraint.activate([
            swiftbetaLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            swiftbetaLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            swiftbetaLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),

            
            swiftbetaStackView.topAnchor.constraint(equalTo: swiftbetaLabel.bottomAnchor, constant: 32),
            swiftbetaStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            swiftbetaStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
        ])
        
        ["1.99$", "2.99$", "14.99$", "24.99$"].forEach { price in
            let button = UIButton(type: .system)
            var configuration =  UIButton.Configuration.borderedTinted()
            configuration.title = price
            configuration.subtitle = "Suscription"
            configuration.image = UIImage(systemName: "eurosign.cicle.fill")
            configuration.imagePadding = 12
            configuration.baseBackgroundColor = .systemBlue
            button.configuration = configuration
            
            swiftbetaStackView.addArrangedSubview(button)
        }
        
        
    }
    
}
