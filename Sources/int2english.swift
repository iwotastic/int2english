extension Int {

    func toEnglish() -> String {
        let basicNames = [
            "zero",
            "one",
            "two",
            "three",
            "four",
            "five",
            "six",
            "seven",
            "eight",
            "nine",
            "ten",
            "eleven",
            "twelve",
            "thirteen",
            "fourteen",
            "fifthteen",
            "sixteen",
            "seventeen",
            "eighteen",
            "nineteen"
        ]

        let twoDigitNames = [
            "twenty",
            "thirty",
            "forty",
            "fifty",
            "sixty",
            "seventy",
            "eighty",
            "ninety"
        ]

        if self < 0 {
            return "negative " + (self * -1).toEnglish()
        }else if self < basicNames.count {
            return basicNames[self]
        }else if self < 100 {
            return twoDigitNames[self / 10 - 2] + (self % 10 == 0 ? "" : "-" + basicNames[self % 10])
        }else if self < 1_000 {
            return basicNames[self / 100] + " hundred" + (self % 100 == 0 ? "" : ", " + (self % 100).toEnglish())
        }else if self < 1_000_000 {
            return (self / 1_000).toEnglish() + " thousand" + (self % 1_000 == 0 ? "" : ", " + (self % 1_000).toEnglish())
        }else if self < 1_000_000_000 {
            return (self / 1_000_000).toEnglish() + " million" + (self % 1_000_000 == 0 ? "" : ", " + (self % 1_000_000).toEnglish())
        }else if self < 1_000_000_000_000 {
            return (self / 1_000_000_000).toEnglish() + " billion" + (self % 1_000_000_000 == 0 ? "" : ", " + (self % 1_000_000_000).toEnglish())
        }else if self == 1_000_000_000_000 {
            return "a trillion"
        }else{
            return "unrecognized"
        }
    }

}
