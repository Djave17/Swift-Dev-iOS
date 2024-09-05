//
//  MenuController.swift
//  Sesion31Agosto
//
//  Created by David Sanchez on 31/8/24.
//

import Foundation


class MenuController {
    let dataSource: MenuDataSourceRepensentable    
    
    init(dataSource: MenuDataSourceRepensentable) {
        self.dataSource = dataSource
    }
    
    func getMenuItems(query: String) -> [MenuModel] {
        dataSource.getMenuItems(query: query)
    }
}
