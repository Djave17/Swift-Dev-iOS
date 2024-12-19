//
//  model.swift
//  ImagePickerDemo
//
//  Created by David Sanchez on 26/9/24.
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
