//
//  ClasificarViewController.swift
//  Pantallas
//
//  Created by Karol Lozano González on 21/09/25.
//
import UIKit

class ClasificarViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg_market")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        let flechaImageView = UIImageView(image: UIImage(named: "flecha"))
        flechaImageView.translatesAutoresizingMaskIntoConstraints = false
        flechaImageView.isUserInteractionEnabled = true
        flechaImageView.contentMode = .scaleAspectFit
        view.addSubview(flechaImageView)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(goToNiveles))
        flechaImageView.addGestureRecognizer(tapGesture)
        
        NSLayoutConstraint.activate([
            flechaImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.bounds.height * 0.02),
            flechaImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            flechaImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),
            flechaImageView.heightAnchor.constraint(equalTo: flechaImageView.widthAnchor)
        ])
       
        let pauseImageView = UIImageView(image: UIImage(named: "btn_pause"))
        pauseImageView.translatesAutoresizingMaskIntoConstraints = false
        pauseImageView.isUserInteractionEnabled = true
        pauseImageView.contentMode = .scaleAspectFit
        view.addSubview(pauseImageView)

        NSLayoutConstraint.activate([
            pauseImageView.centerYAnchor.constraint(equalTo: flechaImageView.centerYAnchor, constant: 1),
            pauseImageView.leadingAnchor.constraint(equalTo: flechaImageView.trailingAnchor, constant: 16),
            pauseImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.17),
            pauseImageView.heightAnchor.constraint(equalTo: pauseImageView.widthAnchor)
        ])

        
        let labelImageView = UIImageView(image: UIImage(named: "sign_wood"))
        labelImageView.translatesAutoresizingMaskIntoConstraints = false
        labelImageView.contentMode = .scaleAspectFit
        view.addSubview(labelImageView)

        NSLayoutConstraint.activate([
            labelImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 5),
            labelImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200),
            labelImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            labelImageView.heightAnchor.constraint(equalTo: labelImageView.widthAnchor, multiplier: 1.0)
        ])

        let textLabel = UILabel()
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.text = "CLASIFICA\nEL ALIMENTO"
        textLabel.textAlignment = .center
        textLabel.numberOfLines = 2
        textLabel.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        textLabel.textColor = .white
        labelImageView.addSubview(textLabel)

        NSLayoutConstraint.activate([
            textLabel.leadingAnchor.constraint(equalTo: labelImageView.leadingAnchor, constant: -3),
            textLabel.trailingAnchor.constraint(equalTo: labelImageView.trailingAnchor, constant: -10),
            textLabel.topAnchor.constraint(equalTo: labelImageView.topAnchor, constant: 10),
            textLabel.bottomAnchor.constraint(equalTo: labelImageView.bottomAnchor, constant: -20)
        ])
        
        let greenlabelImageView = UIImageView(image: UIImage(named: "feedback_panel_success"))
        greenlabelImageView.translatesAutoresizingMaskIntoConstraints = false
        greenlabelImageView.contentMode = .scaleAspectFit
        view.addSubview(greenlabelImageView)

        NSLayoutConstraint.activate([
            greenlabelImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greenlabelImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 170),
            greenlabelImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            greenlabelImageView.heightAnchor.constraint(equalTo: greenlabelImageView.widthAnchor, multiplier: 1.0)
        ])
        
        let textLabel2 = UILabel()
        textLabel2.translatesAutoresizingMaskIntoConstraints = false
        textLabel2.text = "¡MUY BIEN!"
        textLabel2.textAlignment = .center
        textLabel2.numberOfLines = 2
        textLabel2.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        textLabel2.textColor = .white
        greenlabelImageView.addSubview(textLabel2)

        NSLayoutConstraint.activate([
            textLabel2.leadingAnchor.constraint(equalTo: greenlabelImageView.leadingAnchor, constant: 10),
            textLabel2.trailingAnchor.constraint(equalTo: greenlabelImageView.trailingAnchor, constant: -10),
            textLabel2.topAnchor.constraint(equalTo: greenlabelImageView.topAnchor, constant: -7),
            textLabel2.bottomAnchor.constraint(equalTo: greenlabelImageView.bottomAnchor, constant: -20)
        ])
        let subtitleLabel = UILabel()
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.text = "La fruta es diaria"
        subtitleLabel.textAlignment = .center
        subtitleLabel.numberOfLines = 1
        subtitleLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        subtitleLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 0.6, alpha: 1.0) // light yellow
        greenlabelImageView.addSubview(subtitleLabel)

        NSLayoutConstraint.activate([
            subtitleLabel.topAnchor.constraint(equalTo: textLabel2.bottomAnchor, constant: -127),
            subtitleLabel.leadingAnchor.constraint(equalTo: greenlabelImageView.leadingAnchor, constant: 10),
            subtitleLabel.trailingAnchor.constraint(equalTo: greenlabelImageView.trailingAnchor, constant: -10)
        ])
        let foodImageView = UIImageView(image: UIImage(named: "manzana"))
        foodImageView.translatesAutoresizingMaskIntoConstraints = false
        foodImageView.contentMode = .scaleAspectFit
        view.addSubview(foodImageView)

        NSLayoutConstraint.activate([
            foodImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            foodImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            foodImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            foodImageView.heightAnchor.constraint(equalTo: foodImageView.widthAnchor, multiplier: 0.5)
        ])
        
        // Stack view to hold the baskets
        let basketStack = UIStackView()
        basketStack.translatesAutoresizingMaskIntoConstraints = false
        basketStack.axis = .horizontal
        basketStack.alignment = .center
        basketStack.distribution = .equalSpacing
        basketStack.spacing = 3 // tight spacing
        view.addSubview(basketStack)

        // Constrain stack to bottom of screen
        NSLayoutConstraint.activate([
            basketStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 40), // a little lower
            basketStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            basketStack.heightAnchor.constraint(equalToConstant: 180) // taller baskets
        ])

        // Add the basket images
        let basket1 = UIImageView(image: UIImage(named: "basket_daily"))
        let basket2 = UIImageView(image: UIImage(named: "basket_sometimes"))
        let basket3 = UIImageView(image: UIImage(named: "basket_rare"))

        let baskets = [basket1, basket2, basket3]

        for basket in baskets {
            basket.contentMode = .scaleAspectFit
            basket.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                basket.widthAnchor.constraint(equalToConstant: 120),
                basket.heightAnchor.constraint(equalToConstant: 180)
            ])
            basketStack.addArrangedSubview(basket)
        }
        
        let basketLabels = ["DIARIO", "A VECES", "OCASIONAL"]

        for (index, basket) in baskets.enumerated() {
            let topLabel = UILabel()
            topLabel.text = basketLabels[index]
            topLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
            topLabel.textColor = .white
            topLabel.textAlignment = .center
            topLabel.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(topLabel)
            
            NSLayoutConstraint.activate([
                topLabel.centerXAnchor.constraint(equalTo: basket.centerXAnchor),
                topLabel.bottomAnchor.constraint(equalTo: basket.topAnchor, constant: 35) // very close above basket
            ])
        }

        
    }
    @objc func goToNiveles() {
        let nivelesVC = NivelesViewController()
        nivelesVC.modalPresentationStyle = .fullScreen
        present(nivelesVC, animated: true, completion: nil)
    }
}
