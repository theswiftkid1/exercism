//Solution goes in Sources

import Foundation

class Gigasecond {
    fileprivate static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
    }()
    fileprivate static let gigaSecond: Double = pow(10, 9)

    var description: String
    
    init?(from: String) {
        if let parsedDate = Gigasecond.dateFormatter.date(from: from) {
            let futureDate = Date(timeInterval: Gigasecond.gigaSecond, since: parsedDate)
            description = Gigasecond.dateFormatter.string(from: futureDate)
        } else {
            return nil
        }
    }
    
}
