//
//  PlatoViewController.swift
//  Pantallas
//
//  Created by Karol Lozano González on 21/09/25.
//

import UIKit

class PlatoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "fondoPlato")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        let flechaImageView = UIImageView(image: UIImage(named: "flecha"))
        flechaImageView.translatesAutoresizingMaskIntoConstraints = false
        flechaImageView.isUserInteractionEnabled = true
        flechaImageView.contentMode = .scaleAspectFit
        view.addSubview(flechaImageView)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(goToHome))
        flechaImageView.addGestureRecognizer(tapGesture)
        
        NSLayoutConstraint.activate([
            flechaImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.bounds.height * 0.02),
            flechaImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            flechaImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),
            flechaImageView.heightAnchor.constraint(equalTo: flechaImageView.widthAnchor)
        ])
       
        
        let labelImageView = UIImageView(image: UIImage(named: "armaPlato"))
        labelImageView.translatesAutoresizingMaskIntoConstraints = false
        labelImageView.contentMode = .scaleAspectFit
        view.addSubview(labelImageView)

        NSLayoutConstraint.activate([
            labelImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -view.bounds.height * 0.05),
            
            labelImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -37),
            
            labelImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.62),
            labelImageView.heightAnchor.constraint(equalTo: labelImageView.widthAnchor, multiplier: 0.8)
        ])
        
        let trayView = UIView()
        trayView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(trayView)

        let blanket = UIImageView(image: UIImage(named: "blanket"))
        blanket.contentMode = .scaleAspectFill
        blanket.translatesAutoresizingMaskIntoConstraints = false
        trayView.addSubview(blanket)

        NSLayoutConstraint.activate([
            blanket.topAnchor.constraint(equalTo: trayView.topAnchor),
            blanket.bottomAnchor.constraint(equalTo: trayView.bottomAnchor),
            blanket.leadingAnchor.constraint(equalTo: trayView.leadingAnchor),
            blanket.trailingAnchor.constraint(equalTo: trayView.trailingAnchor)
        ])

        NSLayoutConstraint.activate([
            trayView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            trayView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trayView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            trayView.heightAnchor.constraint(equalToConstant: 250)
        ])

        let foodStack = UIStackView()
                foodStack.translatesAutoresizingMaskIntoConstraints = false
                foodStack.axis = .vertical
                foodStack.alignment = .center
                foodStack.distribution = .fillEqually
                foodStack.spacing = 40
                trayView.addSubview(foodStack)
                
                NSLayoutConstraint.activate([
                    foodStack.topAnchor.constraint(equalTo: trayView.topAnchor, constant: 40),
                    foodStack.bottomAnchor.constraint(equalTo: trayView.bottomAnchor, constant: -50),
                    foodStack.leadingAnchor.constraint(equalTo: trayView.leadingAnchor, constant: 10),
                    foodStack.trailingAnchor.constraint(equalTo: trayView.trailingAnchor, constant: -10)
                ])
        
                let row1 = UIStackView()
                row1.axis = .horizontal
                row1.alignment = .center
                row1.distribution = .equalSpacing
                row1.spacing = 30

                let row2 = UIStackView()
                row2.axis = .horizontal
                row2.alignment = .center
                row2.distribution = .equalSpacing
                row2.spacing = 30

                foodStack.addArrangedSubview(row1)
                foodStack.addArrangedSubview(row2)

                
                let plato1 = UIImageView(image: UIImage(named: "platito"))
                plato1.contentMode = .scaleAspectFit
                plato1.translatesAutoresizingMaskIntoConstraints = false
                plato1.isUserInteractionEnabled = true

                // Fruit names
                let frutas = ["fruit1", "fruit2", "fruit3", "fruit4", "fruit5"]

                // Individual positions (x, y offsets inside plato1)
                let fruitPositions: [CGPoint] = [
                    CGPoint(x: 12,   y: -28),    // manzana
                    CGPoint(x: 18, y: -10),  // banana
                    CGPoint(x: 25,  y: -10),  // uva
                    CGPoint(x: -20, y: -28),   // naranja
                    CGPoint(x: -27,  y: -5)    // fresa
                ]

                // Individual scale multipliers (relative to plato1 size)
                let fruitScales: [CGFloat] = [
                    0.27, // fruit1 = 25% of plato1 width
                    0.25,  // fruit2 = 20%
                    0.35, // fruit3 = 35%
                    0.28, // fruit4 = 28%
                    0.42  // fruit5 = 22%
                ]

                // Add fruits to plato1
                for (i, name) in frutas.enumerated() {
                    let fruit = UIImageView(image: UIImage(named: name))
                    fruit.translatesAutoresizingMaskIntoConstraints = false
                    fruit.contentMode = .scaleAspectFit
                    plato1.addSubview(fruit)
                    
                    NSLayoutConstraint.activate([
                        fruit.centerXAnchor.constraint(equalTo: plato1.centerXAnchor, constant: fruitPositions[i].x),
                        fruit.centerYAnchor.constraint(equalTo: plato1.centerYAnchor, constant: fruitPositions[i].y),
                        fruit.widthAnchor.constraint(equalTo: plato1.widthAnchor, multiplier: fruitScales[i]),
                        fruit.heightAnchor.constraint(equalTo: fruit.widthAnchor) // keep square aspect
                    ])
                }
        
                let plato2 = UIImageView(image: UIImage(named: "platito"))
                let plato3 = UIImageView(image: UIImage(named: "platito"))
                let plato4 = UIImageView(image: UIImage(named: "platito"))

                let platos = [plato1, plato2, plato3, plato4]
                
                for (i, plato) in platos.enumerated() {
                    plato.contentMode = .scaleAspectFit
                    plato.translatesAutoresizingMaskIntoConstraints = false
                    NSLayoutConstraint.activate([
                        plato.widthAnchor.constraint(equalToConstant: 160),
                        plato.heightAnchor.constraint(equalToConstant: 160)
                    ])
                    if i < 2 {
                        row1.addArrangedSubview(plato)
                    } else {
                        row2.addArrangedSubview(plato)
                    }
                }
                
    }

    @objc func goToHome() {
        let homeVC=ViewController()
        homeVC.modalPresentationStyle = .fullScreen
        present(homeVC, animated: true, completion: nil)
    }
}
