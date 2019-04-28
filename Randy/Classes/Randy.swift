
// MARK: - Classes & Enums

public enum FormType {
    case username
    case password
    case email
    case phoneNumber
    case driversLicense
    case address
    case zip
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

// MARK: - Functions

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
    }
    return result
}

private func getRandomElements(arr: [Character], min: Int = 0, max: Int) -> [Character] {
    return (min...max).compactMap({_ in arr.randomElement()})
}


