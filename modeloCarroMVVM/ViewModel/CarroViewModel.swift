//
//  CarroViewModel.swift
//  modeloCarroMVVM
//
//  Created by Mariaelena Nascimento Silveira on 21/08/19.
//  Copyright © 2019 Mariaelena Nascimento Silveira. All rights reserved.
//

import UIKit

class CarroViewModel {
    
    var carroModel: CarroModel?
    
    var dadosCarro = [String: Any]()
    
    var nome: String {
        guard let carroModel = carroModel else { return "--" }
        return carroModel.nome
    }
    
    var marca: String {
        guard let carroModel = carroModel else { return "--" }
        return carroModel.marca
    }
    
    var modelo: String {
        guard let carroModel = carroModel else { return "--" }
        return carroModel.modelo ?? "--"
    }
    
    var placa: String {
        guard let carroModel = carroModel else { return "--" }
        return carroModel.placa
    }
    
    var preco: String {
        guard let carroModel = carroModel else { return "--" }
        return carroModel.preco
    }
    
    var imagemCarro: UIImage {
        guard let carroModel = carroModel else { return UIImage() }
        return carroModel.image
    }
    
    
    
    func requisitandoInformacoes() {
        // QUANDO EU TIVER A RESPOSTA
        dadosCarro = DadosCarro.dados()
        print(dadosCarro)
        configurarModel()
    }

    
    private func configurarModel() {
        carroModel = CarroModel(nome: dadosCarro["nome"] as! String  , marca: dadosCarro["marca"] as! String , modelo: dadosCarro["modelo"] as? String, placa: dadosCarro["placa"] as! String, preco: dadosCarro["preco"] as! String, image: UIImage(named: dadosCarro["imagemCarro"]! as! String)!)
    }
}
