//Solution goes in Sources

struct Hamming {

    static func compute(_ strand: String, against: String) -> Int? {
        guard strand.count == against.count else {
            return nil
        }

        return Optional(zip(strand, against).reduce(0) { (acc, nucleotides) in
            nucleotides.0 != nucleotides.1 ? acc + 1 : acc
        })
    }
}
