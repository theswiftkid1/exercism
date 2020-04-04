//Solution goes in Sources

struct Squares {

    var squareOfSum: Int
    var sumOfSquares: Int
    var differenceOfSquares: Int
    
    private let square: (Int) -> Int = { $0 * $0 }

    init(_ number: Int) {
        squareOfSum = square((1...number).reduce(0, +))
        sumOfSquares = (1...number).map(square).reduce(0, +)
        differenceOfSquares = squareOfSum - sumOfSquares
    }
}
