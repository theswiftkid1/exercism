//Solution goes in Sources


private func findBiggestDenominator(_ denominator: Int,
                                    _ multiple: Int) -> Int {
    if (multiple > denominator || multiple <= 0) {
        return 0
    } else if (denominator % multiple == 0) {
        return denominator
    }
    return findBiggestDenominator(denominator - 1, multiple)
}

private func buildMultiplesSet(_ denominator: Int,
                               _ multiple: Int,
                               _ acc: [Int] = []) -> [Int] {
    if (denominator <= 0) {
        return acc
    }
    return buildMultiplesSet(multiple,
                             denominator - multiple,
                             acc + [denominator])
}

func toLimit(_ number: Int,
             inMultiples: Array<Int>) -> Int {
    let multiples = Set(inMultiples.flatMap { (multiple) -> Array<Int> in
        let biggestDenominator = findBiggestDenominator(number - 1, multiple)
        return buildMultiplesSet(biggestDenominator, multiple)
    })

    return multiples.reduce(0, +)
}

//func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
//    var multiples: Set = [0]
//    for multiple in inMultiples.filter({$0 > 0}) {
//        multiples = multiples.union(stride(from: multiple, to: limit, by: multiple))
//    }
//    return multiples.reduce(0, +)
//}
//
