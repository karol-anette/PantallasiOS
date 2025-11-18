//
//  AhorcadoViewController.swift
//  Pantallas
//
//  Created by Karol Lozano González on 20/09/25.
//
//

import UIKit

class AhorcadoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "fondoahorcado")
        backgroundImage.contentMode = .scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        let titleImageView = UIImageView(image: UIImage(named: "titulo"))
        titleImageView.translatesAutoresizingMaskIntoConstraints = false
        titleImageView.contentMode = .scaleAspectFit
        view.addSubview(titleImageView)

        NSLayoutConstraint.activate([
            titleImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.bounds.height * 0.1),
            titleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            titleImageView.heightAnchor.constraint(equalTo: titleImageView.widthAnchor, multiplier: 0.7)
        ])

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
        
        let wordPlaceholder = UILabel()
        wordPlaceholder.translatesAutoresizingMaskIntoConstraints = false
        wordPlaceholder.text = "_ _ _ _ _"
        wordPlaceholder.font = UIFont.systemFont(ofSize: 38, weight: .medium)
        wordPlaceholder.textColor = .white
        wordPlaceholder.textAlignment = .center
        view.addSubview(wordPlaceholder)
        
        // Layout del título, imagen y palabra
        NSLayoutConstraint.activate([
            
            wordPlaceholder.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 185),
            wordPlaceholder.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    
        
        let hangmanImage = UIImageView(image: UIImage(named: "nutri2"))
        hangmanImage.translatesAutoresizingMaskIntoConstraints = false
        hangmanImage.contentMode = .scaleAspectFit
        view.addSubview(hangmanImage)
        
        // Layout del título, imagen y palabra
        NSLayoutConstraint.activate([
            titleImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            titleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            hangmanImage.topAnchor.constraint(equalTo: titleImageView.bottomAnchor, constant: 60),
            hangmanImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            hangmanImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75),
            hangmanImage.heightAnchor.constraint(equalTo: hangmanImage.widthAnchor),
        ])
        
        // Teclado visual A-Z (solo interfaz)
        let lettersStack = UIStackView()
        lettersStack.translatesAutoresizingMaskIntoConstraints = false
        lettersStack.axis = .vertical
        lettersStack.distribution = .fillEqually
        lettersStack.spacing = 5
        view.addSubview(lettersStack)
        
        let alphabet = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        let rowCount = 4
        let lettersPerRow = 7
        let customGreen = UIColor(red: 109/255, green: 137/255, blue: 0/255, alpha: 1.0)

        
        for i in 0..<rowCount {
            let rowStack = UIStackView()
            rowStack.axis = .horizontal
            rowStack.distribution = .fillEqually
            rowStack.spacing = 5
            
            for j in 0..<lettersPerRow {
                let index = i * lettersPerRow + j
                if index < alphabet.count {
                    let letter = alphabet[index]
                    let button = UIButton(type: .system)
                    button.setTitle(String(letter), for: .normal)
                    button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
                    button.setTitleColor(.white, for: .normal)
                    button.backgroundColor = customGreen
                    button.layer.cornerRadius = 5
                    // NO se agrega target, solo visual
                    rowStack.addArrangedSubview(button)
                }
            }
            lettersStack.addArrangedSubview(rowStack)
        }
        
        NSLayoutConstraint.activate([
            lettersStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            lettersStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            lettersStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    @objc func goToNiveles() {
        let nivelesVC = NivelesViewController()
        nivelesVC.modalPresentationStyle = .fullScreen
        present(nivelesVC, animated: true, completion: nil)
    }
}
