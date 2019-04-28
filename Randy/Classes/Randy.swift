
// MARK: - Classes, Enums, Structs

public enum FormType {
    case username
    case password
    case email
    case phoneNumber
    
    case address
    case zip
    
    case creditCardNumber
    case creditCardExpirationDate
    case creditCardSecurityCode
    
    case socialSecurityNumber
    
    case driversLicense
    case carMake
    case carModel
    case carYear
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

public struct CharacterPool {
    static let shared = CharacterPool()
    let upperCaseLetters: [Character] = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    let lowerCaseLetters: [Character] = Array("abcdefghijklmnopqrstuvwxyz")
    let numbers: [Character] = Array("0123456789")
    let allSpecialCharacters: [Character] = Array("!#$%&'()*+,-./:;<=>?@[]^_`{|}~")
    let specialCharactersFromNumbersOnly: [Character] = Array("!@#$%^&*()")
    private init() {}
}

// MARK: - Public Functions

public func getDefaultRandom(type: FormType) -> String {
    let lowerCaseSegment = getRandomElements(arr: CharacterPool.shared.lowerCaseLetters, max: 3)
    let upperCaseSegment = getRandomElements(arr: CharacterPool.shared.upperCaseLetters, max: 3)
    let numberSegment = getRandomElements(arr: CharacterPool.shared.numbers, max: 1)
    let specialSegment = getRandomElements(arr: CharacterPool.shared.specialCharactersFromNumbersOnly, max: 3)
    
    var result: String = ""
    
    switch type {
    case .username:
        result = String(lowerCaseSegment + upperCaseSegment + numberSegment)
        break
    case .password:
        result = String(lowerCaseSegment + upperCaseSegment + numberSegment + specialSegment)
        break
    case .email:
        result = String(lowerCaseSegment + upperCaseSegment + numberSegment) + "@gmail.com"
        break
    case .phoneNumber:
        result = String(repeating: String(numberSegment), count: 5)
        break
    case .driversLicense:
        result = String(repeating: String(numberSegment), count: 4)
        break
    case .address:
        result = String(repeating: String(numberSegment), count: 2) + " " + String(repeating: String(lowerCaseSegment), count: 2) + " Drive"
        break
    case .zip:
        result = String(String(repeating: String(numberSegment), count: 3).dropLast())
        break
    case .creditCardNumber:
        result = String(String(repeating: String(numberSegment), count: 8).dropLast())
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

private func getRandomElements(arr: [Character], min: Int = 0, max: Int) -> [Character] {
    return (min...max).compactMap({_ in arr.randomElement()})
}

private func getRandom(type: CharacterPool, count: Int) -> [Character] {
    switch type {
    case .upperCaseLetter:
        break
    }
    return (min...max).compactMap({_ in arr.randomElement()})
}

