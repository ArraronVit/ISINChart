//
//  DateGenerator.swift
//  LIneChart
//
//  Created by Vitaly Kozlov on 28.01.2020.
//  Copyright © 2020 Vitaly Kozlov. All rights reserved.
//

import Foundation

/// class to generate test data for the chart: prices,ield,years
public class DataGenerator {
    
   var dates: [String] = []
   var values: [String] = []
   var ields: [String] = []
    
    /// function for getting dates in format dd.mm.yyyy
    /// - Parameter amountOfDays: for given ammount of days since now
    func getDatesFor(amountOfDays: Int) -> [String] {
        dates = []
         // Get right now as it's `DateComponents`.
            let now = Calendar.current.dateComponents(in: .current, from: Date())
           let dateFormatter = DateFormatter()
           dateFormatter.timeStyle = .none
                  dateFormatter.dateStyle = .short
                      // Don't worry about month and year wraps, the API handles that.
                 //  var dates: [String] = []
                   for i in 0...amountOfDays {
                      let day = DateComponents(year: now.year, month: now.month, day: now.day! + i)
                      let fullDate = Calendar.current.date(from: day)!
                       let res = dateFormatter.string(from: fullDate)

                       dates.append(res)
                   }
        return dates
    }
    
    /// function for getting random prices
    /// - Parameter dates: for given number of dates
    func getPricesForDates(_ dates: [String]) -> [String] {
        values = []
        for _ in dates {
            let value = (0...20).randomElement()
            if let stringValue = value {
                values.append(String(stringValue))
            }
        }
        return values
    }
    
    /// function for getting random ields
    /// - Parameter dates: for given number of dates
    func getIeldForDates(_ dates: [String]) -> [String] {
        ields = []
        for _ in dates {
            let ield = (0...5).randomElement()
            if let stringIeld = ield {
                ields.append(String(stringIeld))
            }
        }
        return ields
    }
}

