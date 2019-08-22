//
//  CarroViewController.swift
//  modeloCarroMVVM
//
//  Created by Mariaelena Nascimento Silveira on 21/08/19.
//  Copyright © 2019 Mariaelena Nascimento Silveira. All rights reserved.
//

import UIKit

class CarroViewController: UIViewController {

    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var marcaLabel: UILabel!
    @IBOutlet weak var placaLabel: UILabel!
    @IBOutlet weak var precoLabel: UILabel!
    @IBOutlet weak var modeloLabel: UILabel!
    @IBOutlet weak var carroImage: UIImageView!
    
    private var carroViewModel = CarroViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carroViewModel.requisitandoInformacoes()
        setUI()
    }
    
    private func setUI() {
        nomeLabel.text = carroViewModel.nome
        marcaLabel.text = carroViewModel.marca
        modeloLabel.text = carroViewModel.modelo
        placaLabel.text = carroViewModel.placa
        precoLabel.text = carroViewModel.preco
        carroImage.image = carroViewModel.imagemCarro
    }

}
