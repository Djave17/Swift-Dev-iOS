//
//  MediaModel .swift
//  ImagePickerDemo
//
//  Created by LABORATORIO MAC UAM on 21/9/24.
//


import UIKit
enum MediaType{
    case photo
    case video
}
struct MediaModel: Hashable{
    let id = UUID().uuidString
    let type: MediaType
    let image: UIImage
    
    
}
