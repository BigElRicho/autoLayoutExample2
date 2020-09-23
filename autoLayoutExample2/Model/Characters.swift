//
//  Characters.swift
//  autoLayoutExample2
//
//  Created by Julian Rich on 23/9/20.
//  Copyright © 2020 Julian Rich. All rights reserved.
//

import Foundation

struct Characters
{
    private var characters:[String] = []
    private var current:Int = 0
    
    let birthday:CustomDate = CustomDate(day:3, month:8, year:2019)
    
    init()
    {
        populateCharacters()
    }
    
    private mutating func populateCharacters()
    {
        characters.append("simba_1")
        characters.append("lion_king_2")
        characters.append("lion_king_3")
        characters.append("lion_king_4")
  
    }
    
    public mutating func getNextImageName()-> String
    {
        if current == 3
        {
            current = 0
        }
        else
        {
            current += 1
        }
        return characters[current]
    }
}
