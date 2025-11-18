//
//  ViewController.swift
//  Pantallas
//
//  Created by Karol Lozano González on 20/09/25.
//

import UIKit
import SwiftUI
import AVFoundation

class ViewController: UIViewController {
    var botonesPlayer: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swiftUIView = HomeView(onPadresTap: {[weak self] in
            self?.goToPadres()
        },
            onNivelesTap: {[weak self] in
            self?.goToNiveles()
        }
        )
            
        let hostingController = UIHostingController(rootView: swiftUIView)
            
        addChild(hostingController)
        hostingController.view.frame = view.bounds
        hostingController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
    }
        
    @objc func goToParents() {
        playBotonSound()
        let parentsVC = ParentsViewController()
        parentsVC.modalPresentationStyle = .fullScreen
        present(parentsVC, animated: true, completion: nil)
    }
    
    @objc func goToPadres() {
        playBotonSound()
        let padresVC = PadresViewController()
        padresVC.modalPresentationStyle = .fullScreen
        present(padresVC, animated: true, completion: nil)
    }
    
    @objc func goToNiveles() {
        playBotonSound()
        let nivelesVC = NivelesViewController()
        nivelesVC.modalPresentationStyle = .fullScreen
        present(nivelesVC, animated: true, completion: nil)
    }
    
    func playBotonSound() {
        guard let url = Bundle.main.url(forResource: "Botones", withExtension: "mp3") else {
            return
        }

        do {
            botonesPlayer = try AVAudioPlayer(contentsOf: url)
            botonesPlayer?.prepareToPlay()
            botonesPlayer?.play()
        } catch {
        }
    }
                        
    struct HomeView: View {
        var onPadresTap: () -> Void
        var onNivelesTap: () -> Void
        var body: some View {
            AppTheme {
                ZStack(alignment: .top) {
                    // Fondo
                    VStack {
                        Spacer()
                        
                        Image("Inicio")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity)
                            .frame(height: UIScreen.main.bounds.height)
                            .clipped()
                            .ignoresSafeArea()
                    }

                    Image("logo_blanco")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 75)
                        .padding(.top, 60)
                        .padding(.trailing, 255)
                    
                    VStack{
                        Image("inicioTitulo")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 300)
                            .padding(.top, 115)
                        
                        Image("inicioNutri")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 300)
                            .padding(.top, -25)
                            .padding(.trailing, -20)
                    }
                    
                    
                    VStack {
                        Spacer()
                            Button(action: onNivelesTap) {
                                Image("jugar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 70)
                            }

                            Button(action: onPadresTap) {
                                Image("padres")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 70)
                            }

                        .frame(maxWidth: 360)
                        .padding(.bottom, 95)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.trailing, 155)
                }
            }
        }
    }
}
