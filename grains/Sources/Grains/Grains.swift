//Solution goes in Sources


import Foundation

struct Grains {
    enum GrainsError: Error {
        case inputTooHigh(String)
        case inputTooLow(String)
    }

    static func computeGrainsForSquare(_ squareNb: Int) -> UInt64 {
        UInt64(pow(Double(2), Double(squareNb - 1)))
    }

    static let total: UInt64 = {
        (1...64).reduce(0) { (acc, v) -> UInt64 in
            acc + computeGrainsForSquare(v)
        }
    }()

    static func square(_ input: Int) throws -> UInt64 {
        if (input < 1) {
            throw GrainsError.inputTooLow("Input[\(input)] invalid. Input should be between 1 and 64 (inclusive)")
        } else if (input > 64) {
            throw GrainsError.inputTooHigh("Input[\(input)] invalid. Input should be between 1 and 64 (inclusive)")
        } else {
            return computeGrainsForSquare(input)
        }
    }
}
