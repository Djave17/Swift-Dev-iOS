//
//  MenuModel .swift
//  Sesion31Agosto
//
//  Created by David Sanchez on 31/8/24.

import Foundation

enum MenuType: String {
    case breakfast = "Desayunos"
    case mainCourse = "Platos Fuertes"
    case drink = "Bebidas"
    case dessert = "Postres"
    
}
struct MenuModel {
    let id: String
    let name: String
    let price: Double
    let image: String
    let type: MenuType
    let description: String
}

extension MenuModel: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
