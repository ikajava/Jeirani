//: Playground - noun: a place where people can play

import UIKit
enum Weekdays: String {
    case monday = "ორშაბათი"
    case tuesday = "სამშაბათი"
    case wednsday = "ოთხშაბათი"
}
var weeklyMenu = [Weekdays: [String: Decimal]]()
weeklyMenu[Weekdays.monday] = ["მწვადი": 15.00, "კოლა": 0.70]
weeklyMenu[Weekdays.tuesday] = ["მწვადი": 17.00, "კოლა": 3.70]
weeklyMenu[Weekdays.wednsday] = ["მწვადი": 16.00, "კოლა": 38.70]
let weekDay = Weekdays.monday
func calculatePrice(day: Weekdays, dict:[Weekdays: [String: Decimal]])->Decimal {
    var result = Decimal() // 0.0
    if let dayMenu = dict[day] {
        for (_, value) in dayMenu {
            result = result + value
        }
    }
    return result
}
print(calculatePrice(day: weekDay, dict: weeklyMenu))
//დღეს რაღაცშაბათია, მენიუს ღირებულებაა 0.0