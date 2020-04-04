// Solution goes in Sources

enum TranscriptionError: Error {
    case invalidNucleotide(message: String)
}

struct Nucleotide {

    private let rnaStrand: String

    func complementOfDNA() -> String {
        return rnaStrand
    }

    static let complements: [Character : Character] = [
        "G": "C",
        "C": "G",
        "T": "A",
        "A": "U",
    ]

    static func convertDNAToRNA(_ c: Character) throws -> Character {
        if let complement = complements[c] {
            return complement
        } else {
            throw TranscriptionError.invalidNucleotide(message: "\(c) is not a valid Nucleotide")
        }
    }

    init(_ dnaStrand: String) throws {
        self.rnaStrand = try dnaStrand.reduce("", { acc, c in
            return acc + String(try Nucleotide.convertDNAToRNA(c))
        })
    }
}
