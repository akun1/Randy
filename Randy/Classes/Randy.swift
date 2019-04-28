
// MARK: - Classes, Enums, Structs

public enum FormType {
    case username
    case password
    case email
    case phoneNumber
    case date
    case day
    case month
    case year
    
    case address
    case zip
    
    case creditCardNumber
    case creditCardExpirationDate
    case creditCardSecurityCode
    
    case socialSecurityNumber
    
    case driversLicense
    case carLicensePlateNumber
    case carVinNumberPre1981
    case carVinNumberPost1981
    
    case isbn13
}

public enum OutputType {
    case qrCode
    case barCode
    case string
}

public enum CharacterPool {
    case upperCaseLetters
    case lowerCaseLetters
    case allNumbers
    case nonZeroNumbers
    case allSpecialCharacters
    case specialCharactersFromNumbersOnly
}

// MARK: - Public Functions

public func getCharacterPool(type: CharacterPool) -> [Character] {
    var result: String = ""
    switch type {
    case .upperCaseLetters:
        result = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        break
    case .lowerCaseLetters:
        result = "abcdefghijklmnopqrstuvwxyz"
        break
    case .allNumbers:
        result = "0123456789"
        break
    case .nonZeroNumbers:
        result = "123456789"
        break
    case .allSpecialCharacters:
        result = "!#$%&'()*+,-./:;<=>?@[]^_`{|}~"
        break
    case .specialCharactersFromNumbersOnly:
        result = "!@#$%^&*()"
        break
    }
    return Array(result)
}

public func getDefaultRandom(type: FormType) -> String {
    var result: String = ""
    switch type {
    case .username:
        result = getRandomCombinationWithPrefix(types: [.lowerCaseLetters, .allNumbers, .upperCaseLetters], prefixType: .lowerCaseLetters, totalCount: 8)
        break
    case .password:
        result = getRandomCombinationWithPrefix(types: [.lowerCaseLetters, .upperCaseLetters, .allNumbers, .specialCharactersFromNumbersOnly], prefixType: .lowerCaseLetters, totalCount: 10)
        break
    case .email:
        result = getDefaultRandom(type: .username) + "@gmail.com"
        break
    case .phoneNumber:
        result = getRandomWithPrefix(type: .allNumbers, prefixType: .nonZeroNumbers, totalCount: 10)
        break
    case .driversLicense:
        result = getRandomWithPrefix(type: .allNumbers, prefixType: .nonZeroNumbers, totalCount: 8)
        break
    case .address:
        result = getRandomWithPrefix(type: .allNumbers, prefixType: .nonZeroNumbers, totalCount: 4) + " " + getRandom(type: .lowerCaseLetters, count: 6) + " Drive"
        break
    case .zip:
        result = getRandomWithPrefix(type: .allNumbers, prefixType: .nonZeroNumbers, totalCount: 5)
        break
    case .creditCardNumber:
        result = getRandom(type: .allNumbers, count: 16)
        break
    case .creditCardExpirationDate:
        <#code#>
    case .creditCardSecurityCode:
        result = getRandom(type: .allNumbers, count: 3)
        break
    case .socialSecurityNumber:
        result = getRandom(type: .allNumbers, count: 9)
        break
    case .carLicensePlateNumber:
        result = getRandomCombinationWithPrefix(types: [.allNumbers, .upperCaseLetters], prefixType: .nonZeroNumbers, totalCount: 7)
        break
    case .carVinNumberPre1981:
        result = getRandomWithRandomLength(type: .allNumbers, lengthMin: 11, lengthMax: 17)
        break
    case .carVinNumberPost1981:
        result = getRandom(type: .allNumbers, count: 17)
        break
    case .isbn13:
        guard let prefix = ["978", "979"].randomElement() else {}
        result = prefix + getRandomWithRandomLength(type: .allNumbers, lengthMin: 1, lengthMax: 5) + getRandomWithRandomLength(type: .allNumbers, lengthMin: 1, lengthMax: 7) + getRandomWithRandomLength(type: .allNumbers, lengthMin: 1, lengthMax: 6)
    case .date:
        <#code#>
    case .day:
        <#code#>
    case .month:
        <#code#>
    case .year:
        <#code#>
    }
    return result
}

// MARK: - Private Functions

private func getRandom(type: CharacterPool, count: Int) -> String {
    if count < 0 {
        fatalError("Count must be non negative.")
    }
    return String((0...count).compactMap({_ in getCharacterPool(type: type).randomElement()}))
}

private func getRandom(types: [CharacterPool]) -> [String] {
    if types.count < 1 {
        fatalError("Types argument must be greater than 0.")
    }
    var results: [String] = []
    for type in types {
        results.append(getRandom(type: type, count: 3))
    }
    return results
}

private func getRandomCombination(types: [CharacterPool], totalCount: Int) -> String {
    if totalCount < 0 {
        fatalError("Totla Count must be non negative.")
    }
    var totalPool: String = ""
    for type in types {
        totalPool += getCharacterPool(type: type)
    }
    return String((0...totalCount).compactMap({_ in totalPool.randomElement()}))
}

private func getRandomWithPrefix(type: CharacterPool, prefixType: CharacterPool, totalCount: Int) -> String {
    if totalCount < 0 {
        fatalError("Totla Count must be non negative.")
    }
    return String((0...1).compactMap({_ in getCharacterPool(type: prefixType).randomElement()})) + String((0...totalCount - 1).compactMap({_ in getCharacterPool(type: type).randomElement()}))
}

private func getRandomCombinationWithPrefix(types: [CharacterPool], prefixType: CharacterPool, totalCount: Int) -> String {
    if totalCount < 0 {
        fatalError("Totla Count must be non negative.")
    }
    var totalPool: String = ""
    for type in types {
        totalPool += getCharacterPool(type: type)
    }
    return String((0...1).compactMap({_ in getCharacterPool(type: prefixType).randomElement()})) + String((0...totalCount - 1).compactMap({_ in totalPool.randomElement()}))
}

private func getRandomWithRandomLength(type: CharacterPool, lengthMin: Int, lengthMax: Int) -> String {
    if lengthMax <= lengthMin {
        fatalError("Maximum length must be greater than minimum length.")
    }
    guard let count = (lengthMin...lengthMax).randomElement() else { return "" }
    return String((0...count).compactMap({_ in getCharacterPool(type: type).randomElement()}))
}
