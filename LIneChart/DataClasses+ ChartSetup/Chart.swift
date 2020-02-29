//
//  Chart.swift
//  LIneChart
//
//  Created by Vitaly Kozlov on 31.01.2020.
//  Copyright © 2020 Vitaly Kozlov. All rights reserved.
//

import Foundation
import Charts

/// class to setup Chart
public class Chart {
    
    public func generalSetup(lineChartView: LineChartView ) {
        lineChartView.noDataTextColor = .white
        lineChartView.noDataText = "No data for the chart."
        lineChartView.backgroundColor = .white
    }
    
    /// function to customize points on the chart
    /// - Parameters:
    ///   - lineChartView: standard view of chart from charts library
    ///   - dataPoints: array of x-values for points
    ///   - values: array of y-values for points
    public func dataPointsSetup(lineChartView: LineChartView, dataPoints: [String], values: [String]) {
        var lineDataEntry: [ChartDataEntry] = []
        for i in 0..<dataPoints.count {
           
            let dataPoint = ChartDataEntry(x: Double(i), y: Double(values[i])!)
           
           lineDataEntry.append(dataPoint)
        }
       
        let chartDataSet = LineChartDataSet(entries: lineDataEntry, label: "")
        let chartData = LineChartData()
        chartData.addDataSet(chartDataSet)
        chartData.setDrawValues(true)
        chartDataSet.colors = [.systemPink]
        chartDataSet.setCircleColor(.systemPink)
        chartDataSet.circleHoleColor = .systemPink
        chartDataSet.circleRadius = 4
        chartDataSet.drawFilledEnabled = true
        
        lineChartView.data = chartData
    }
    
    /// function to customize axes on the chart
    /// - Parameter lineChartView: standard view of chart from charts library
    public func axesSetup(lineChartView: LineChartView) {
        
          lineChartView.xAxis.labelPosition = .bottom
          lineChartView.xAxis.drawGridLinesEnabled = true
          lineChartView.xAxis.valueFormatter = DateValueFormatter()
        
          lineChartView.chartDescription?.enabled = false
          lineChartView.legend.enabled = false
          lineChartView.rightAxis.enabled = false
          
          lineChartView.leftAxis.drawGridLinesEnabled = true
          lineChartView.leftAxis.drawLabelsEnabled = true
          lineChartView.leftAxis.valueFormatter = ValueFormatter()
    }
    
    /// function to add animations on the chart
    /// - Parameter lineChartView: standard view of chart from charts library
    public func animation(lineChartView: LineChartView) {
        lineChartView.translatesAutoresizingMaskIntoConstraints = false
        lineChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .easeInSine)
    }
}
