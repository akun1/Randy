import XCTest
import Randy

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        continueAfterFailure = true
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetDefaultRandomFunc() {
        FormType.allCases.forEach { (type) in
            executeTestDefaultRandom(type: type, textToTest: getDefaultRandom(type: type))
        }
    }
    
    func executeTestDefaultRandom(type: FormType, textToTest: String) {
        var predicate: NSPredicate = NSPredicate()
        predicate = getPredicate(type: type)
        XCTAssert(predicate.evaluate(with: textToTest), "Type Failed: \(type)")
    }
    
    func getPredicate(type: FormType) -> NSPredicate {
        var pattern: String = ""
        switch type {
        case .username:
            pattern = "[A-Z0-9a-z]{8}"
            break
        case .password:
            pattern = "[A-Z0-9a-z!@#$%^&*()]{10}"
            break
        case .email:
            pattern = "[A-Z0-9a-z]+@gmail.com"
            break
        case .phoneNumber:
            pattern = "[0-9]{10}"
            break
        case .day:
            pattern = "\\bMonday\\b|\\bTuesday\\b|\\bWednesday\\b|\\bThursday\\b|\\bFriday\\b|\\bSaturday\\b|\\bSunday\\b"
            break
        case .year:
            pattern = "[0-9]{4}"
            break
        case .address:
            pattern = "[1-9]{1}[0-9]{3}\\s[a-z]{6}\\s+\\bDrive\\b"
            break
        case .zip:
            pattern = "[0-9]{5}"
            break
        case .creditCardNumber:
            pattern = "[0-9]{16}"
            break
        case .creditCardSecurityCode:
            pattern = "[0-9]{3}"
            break
        case .socialSecurityNumber:
            pattern = "[0-9]{9}"
            break
        case .driversLicense:
            pattern = "[1-9]{1}[0-9]{7}"
            break
        case .carLicensePlateNumber:
            pattern = "[1-9]{1}[0-9A-Z]{6}"
            break
        case .carVinNumberPre1981:
            pattern = "[0-9]{11,17}"
            break
        case .carVinNumberPost1981:
            pattern = "[0-9]{17}"
            break
        case .badIsbn13:
            pattern = "^(979|978){1}[0-9]{10}"
            break
        }
        return NSPredicate(format: "SELF MATCHES %@", pattern)
    }
}

