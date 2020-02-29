//
//  ViewController.swift
//  LIneChart
//
//  Created by Vitaly Kozlov on 27.01.2020.
//  Copyright © 2020 Vitaly Kozlov. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {
    
    var lineDataEntry: [ChartDataEntry] = []
    var dates: [String] = []
    var prices: [String] = []
    var ields: [String] = []
    var priceMode: Bool = true
    var isinReceived: Bool = false
    
    let chart = Chart()
    
    @IBAction func oneWeekIntervalChosen(_ sender: Any) {
        if isinReceived {
        lineChartView.clear()
        lineDataEntry = []
        
        let week = Array(dates[0...6])
        let pricesForWeek = Array(prices[0...6])
        let ieldForWeek = Array(ields[0...6])

            chart.animation(lineChartView: lineChartView)
        if priceMode {
            setLineChart(dataPoints: week, values: pricesForWeek)
        } else {
            setLineChart(dataPoints: week, values: ieldForWeek)
        }
      }
    }
    
    @IBAction func oneMonthIntervalChosen(_ sender: Any) {
        if isinReceived {
        lineChartView.clear()
          lineDataEntry = []
        
          let month = Array(dates[0...30])
          let pricesForMonth = Array(prices[0...30])
          let ieldForMonth = Array(ields[0...30])
        
            chart.animation(lineChartView: lineChartView)
         if priceMode {
             setLineChart(dataPoints: month, values: pricesForMonth)
         } else {
             setLineChart(dataPoints: month, values: ieldForMonth)
         }
       }
    }
    
    @IBAction func threeMonthsIntervalChosen(_ sender: Any) {
        if isinReceived {
          lineChartView.clear()
          lineDataEntry = []
        
          let threeMonths = Array(dates[0...91])
          let pricesForThreeMonths = Array(prices[0...91])
          let ieldForThreeMonths = Array(ields[0...91])
        
            chart.animation(lineChartView: lineChartView)
         if priceMode {
             setLineChart(dataPoints: threeMonths, values: pricesForThreeMonths)
         } else {
             setLineChart(dataPoints: threeMonths, values: ieldForThreeMonths)
         }
       }
    }
    
    @IBAction func sixMonthsIntervalChosen(_ sender: Any) {
        if isinReceived {
          lineChartView.clear()
          lineDataEntry = []
        
          let sixMonths = Array(dates[0...182])
          let pricesForSixMonths = Array(prices[0...182])
          let ieldForSixMonths = Array(ields[0...182])
        
            chart.animation(lineChartView: lineChartView)
         if priceMode {
             setLineChart(dataPoints: sixMonths, values: pricesForSixMonths)
         } else {
             setLineChart(dataPoints: sixMonths, values: ieldForSixMonths)
         }
       }
    }
    
    @IBAction func oneYearIntervalChosen(_ sender: Any) {
        if isinReceived {
          lineChartView.clear()
          lineDataEntry = []
        
          let year = Array(dates[0...364])
          let pricesForYear = Array(prices[0...364])
          let ieldForYear = Array(ields[0...364])
        
            chart.animation(lineChartView: lineChartView)
         if priceMode {
             setLineChart(dataPoints: year, values: pricesForYear)
         } else {
             setLineChart(dataPoints: year, values: ieldForYear)
         }
       }
    }
    
    @IBAction func twoYearsIntervalChosen(_ sender: Any) {
        if isinReceived {
          lineChartView.clear()
          lineDataEntry = []
        
          let twoYears = dates
          let pricesForTwoYears = prices
          let ieldForTwoYears = ields
          
            chart.animation(lineChartView: lineChartView)
         if priceMode {
             setLineChart(dataPoints: twoYears, values: pricesForTwoYears)
         } else {
             setLineChart(dataPoints: twoYears, values: ieldForTwoYears)
         }
       }
    }
    
    @IBAction func modeButtonTapped(_ sender: Any) {
        if isinReceived {
        priceMode = !priceMode
        if priceMode {
        modeButton.titleLabel?.text = "Price"
            modeButton.setTitle("Price", for: .normal)
        } else {
            modeButton.titleLabel?.text = "IELD"
            modeButton.setTitle("IELD", for: .normal)
        }
      }
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        if isinInputText.text == "4B0220701481B001P" {
            isinReceived = true
            let generator = DataGenerator()
            dates = generator.getDatesFor(amountOfDays: 730)
            prices = generator.getPricesForDates(dates)
            ields = generator.getIeldForDates(dates)
            
          let week = Array(dates[0...6])
          let pricesForWeek = Array(prices[0...6])
          let ieldForWeek = Array(ields[0...6])
          
            chart.animation(lineChartView: lineChartView)
          if priceMode {
              setLineChart(dataPoints: week, values: pricesForWeek)
          } else {
              setLineChart(dataPoints: week, values: ieldForWeek)
          }
        }
    }
    
    @IBOutlet weak var lineChartView: LineChartView!
    
    @IBOutlet weak var modeButton: RoundButton!
    
    @IBOutlet weak var isinInputText: UITextField!
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
    }
    
    func setLineChart(dataPoints: [String], values: [String]) {
        chart.generalSetup(lineChartView: lineChartView)
        chart.dataPointsSetup(lineChartView: lineChartView, dataPoints: dataPoints, values: values)
        chart.axesSetup(lineChartView: lineChartView)
    }
}


