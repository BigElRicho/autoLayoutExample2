//
//  customDate.swift
//  autoLayoutExample2
//
//  Created by Julian Rich on 23/9/20.
//  Copyright © 2020 Julian Rich. All rights reserved.
//

import Foundation

struct CustomDate
{
    
    private (set) var date:Date?
    
    init(day:Int, month:Int, year:Int, hour:Int = 0, minute:Int = 0,
         timeZone:TimeZone = .current)
    {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        dateComponents.timeZone = timeZone
        dateComponents.minute = minute
        dateComponents.hour = hour
        
        let userCalandar = Calendar.current
        
        date = userCalandar.date(from: dateComponents)
    }
    
    //as format creates a formatted String type.
    //-> is the return value type.
    func formatted(as format:String = "dd-MM-yyyy") -> String?
    {
        //This attempts to create a value called date with the customDates date variable.
        //It returns nil if there is none.
        guard let date = self.date else {return nil}
        
        //This creates the return argument from the input argument above.
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        
        return dateFormatter.string(from: date)
    }
    
    func getDate() -> Date?
    {
        return date
    }
}
