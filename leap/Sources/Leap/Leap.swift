//Solution goes in Sources

class Year {
    var isLeap: Bool = false
    
    init(calendarYear: Int) {
        isLeap = (calendarYear % 4 == 0 && (calendarYear % 400 == 0 || calendarYear % 100 != 0)) ? true : false
    }
    
    func isLeapYear() -> Bool {
        return isLeap
    }
}
