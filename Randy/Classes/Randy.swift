
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
    case carMake
    case carModel
    case carLicensePlateNumber
    case carVinNumberPre1981
    case carVinNumberPost1981
    
    case isbn10
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
        result = getRandom(types: [.lowerCaseLetters, .upperCaseLetters, .allNumbers]).joined()
        break
    case .password:
        result = getRandom(types: [.lowerCaseLetters, .upperCaseLetters, .allNumbers, .specialCharactersFromNumbersOnly]).joined()
        break
    case .email:
        result = getDefaultRandom(type: .username) + "@gmail.com"
        break
    case .phoneNumber:
        result = getRandom(type: .nonZeroNumbers, count: 1) + getRandom(type: .allNumbers, count: 9)
        break
    case .driversLicense:
        result = getRandom(type: .allNumbers, count: 8)
        break
    case .address:
        result = getRandom(type: .nonZeroNumbers, count: 1) + getRandom(type: .allNumbers, count: 3) + " " + getRandom(type: .lowerCaseLetters, count: 6) + " Drive"
        break
    case .zip:
        result = getRandom(type: .nonZeroNumbers, count: 1) + getRandom(type: .allNumbers, count: 4)
        break
    case .creditCardNumber:
        result = getRandom(type: .allNumbers, count: 16)
        break
    case .creditCardExpirationDate:
        <#code#>
    case .creditCardSecurityCode:
        <#code#>
    case .socialSecurityNumber:
        <#code#>
    case .carMake:
        <#code#>
    case .carModel:
        <#code#>
    case .carYear:
        <#code#>
    case .carLicensePlateNumber:
        <#code#>
    case .carVinNumberPre1981:
        <#code#>
    case .carVinNumberPost1981:
        <#code#>
    case .isbn10:
        <#code#>
    case .isbn13:
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
    var results: [String] = []
    if types.count < 1 {
        fatalError("Types argument must be greater than 0.")
    }
    for type in types {
        results.append(getRandom(type: type, count: 3))
    }
    return results
}
