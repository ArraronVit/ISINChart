import UIKit
import Date


var str = "Hello, playground"

public class DateGenerator {
   // Get right now as it's `DateComponents`.
   let now = Calendar.current.dateComponents(in: .current, from: Date())

   // Create the start of the day in `DateComponents` by leaving off the time.
   let today = DateComponents(year: now.year, month: now.month, day: now.day)
   let dateToday = Calendar.current.date(from: today)!
   print(dateToday.timeIntervalSince1970)

   // Add 1 to the day to get tomorrow.
   // Don't worry about month and year wraps, the API handles that.
   let tomorrow = DateComponents(year: now.year, month: now.month, day: now.day! + 1)
   let dateTomorrow = Calendar.current.date(from: tomorrow)!
   print(dateTomorrow.timeIntervalSince1970)
    
}

