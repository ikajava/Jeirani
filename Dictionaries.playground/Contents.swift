//: Playground - noun: a place where people can play

import UIKit


enum WeekDays: String {
    case Monday = "ორშაბათი"
    case Tuesday = "სამშაბათი"
    case Friday = "ოთხშაბათი"
}

let currentDay = WeekDays.Monday



var menuDictionary = [WeekDays: [String:Double]]()
var outputText = "დღეს \(currentDay.rawValue)ა, მენიუ გათვალისწინებული არ არის."

menuDictionary[WeekDays.Monday] = ["Pizza":10.99, "Cola":2.5]
menuDictionary[WeekDays.Tuesday] = ["Soup": 5.99, "Sprite": 3.44]


func CalculatePrice(day: WeekDays) -> Decimal?{
    var price = Decimal()
    if let dayDictionary = menuDictionary[day] {
        for (_, value) in dayDictionary {
            price = price + Decimal(value)
        }
        return price
        
    }
    return nil
}

if let outputPrice = CalculatePrice(day: currentDay) {
     outputText = "დღეს \(currentDay.rawValue)ა, თქვენი მენიუს ღირებულებაა \(outputPrice)"
}
print(outputText)




