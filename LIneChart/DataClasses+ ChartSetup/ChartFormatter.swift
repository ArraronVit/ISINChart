//
//  ChartFormatter.swift
//  LIneChart
//
//  Created by Vitaly Kozlov on 27.01.2020.
//  Copyright © 2020 Vitaly Kozlov. All rights reserved.
//

import Foundation
import Charts

/// class formatter for x-axis values
public class ValueFormatter: IAxisValueFormatter {
    
    /// func for formatting values on the x-axis
    /// - Parameters:
    ///   - value: values from the chart
    ///   - axis: x-axis on the chart
    public func stringForValue(_ value: Double, axis: AxisBase?) -> String {
           return "\(Int(ceil(value)))"
       }
}

/// class formatter for x-axis dates
public class DateValueFormatter: IAxisValueFormatter {
    
    /// set time style
    lazy private var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .none
        dateFormatter.dateStyle = .short
        dateFormatter.locale = .current
        return dateFormatter
    }()
    
    /// func for formattng dates on the x-axis
    /// - Parameters:
    ///   - value: seconds- convert to years
    ///   - axis: standard axisBase from charts library
    public func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        let date = Date(timeIntervalSinceNow: value * 3600 * 24 + 12)
        return dateFormatter.string(from: date)
    }
}
