//Solution goes in Sources


struct Bob {

    private static func isUppercaseWord(_ word: Substring) -> Bool {
        word.allSatisfy { $0.isUppercase }
    }

    private static func isShouting(_ input: String) -> Bool {
        let wordArray = input.split { !$0.isLetter }

        if (wordArray.isEmpty) {
            return false
        } else {
            return wordArray.allSatisfy { word in isUppercaseWord(word) }
        }
    }

    private static func sayingNothing(_ input: String) -> Bool {
        input.filter { $0 != " " }.isEmpty
    }

    static func hey(_ input: String) -> String {
        if (sayingNothing(input)) {
            return "Fine. Be that way!"
        } else if (isShouting(input)) {
            return "Whoa, chill out!"
        } else if (input.last == "?") {
            return "Sure."
        } else {
            return "Whatever."
        }
    }
}
