//
//  BirthdayViewModel.swift
//  autoLayoutExample2
//
//  Created by Julian Rich on 23/9/20.
//  Copyright © 2020 Julian Rich. All rights reserved.
//

import Foundation
import UIKit

struct BirthdayViewModel
{
    //Model
    private var character:Characters = Characters()
    
    //gets an image name from the model and finds it and returns the corresponding image.
    public mutating func getNextImage() -> UIImage?
    {
        let image = UIImage(named: character.getNextImageName())
        return image
        
    }
    
    //Formats a birthday string and returns it.
    func getBirthday(withFormat format: String = "dd-MM-yyyy") -> String?
    {
    guard let date = character.birthday.getDate() else {return nil}
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    return dateFormatter.string(from: date)
    }
}
