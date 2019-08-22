//
//  DadosCarro.swift
//  modeloCarroMVVM
//
//  Created by Mariaelena Nascimento Silveira on 21/08/19.
//  Copyright © 2019 Mariaelena Nascimento Silveira. All rights reserved.
//

import UIKit

struct DadosCarro {
    static func dados() -> [String: Any] {
        let carro1 = ["nome": "Onix", "marca": "Chevrolet", "modelo": "Joy", "placa": "QGR-7131", "preco": "44.000,00", "imagemCarro": "carro"]
        return carro1
    }
}
