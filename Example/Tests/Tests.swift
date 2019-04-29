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
            pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            break
        case .password:
            pattern = "([\\w\\d]){8})"
            break
        case .email:
            pattern = "[A-Z0-9a-z]+@gmail.com"
            break
        case .phoneNumber:
            pattern = "([\\w\\d]){8})"
            break
        case .day:
            pattern = "([\\w\\d]){8})"
            break
        case .year:
            pattern = "([\\w\\d]){8})"
            break
        case .address:
            pattern = "([\\w\\d]){8})"
            break
        case .zip:
            pattern = "([\\w\\d]){8})"
            break
        case .creditCardNumber:
            pattern = "([\\w\\d]){8})"
            break
        case .creditCardSecurityCode:
            pattern = "([\\w\\d]){8})"
            break
        case .socialSecurityNumber:
            pattern = "([\\w\\d]){8})"
            break
        case .driversLicense:
            pattern = "([\\w\\d]){8})"
            break
        case .carLicensePlateNumber:
            pattern = "([\\w\\d]){8})"
            break
        case .carVinNumberPre1981:
            pattern = "([\\w\\d]){8})"
            break
        case .carVinNumberPost1981:
            pattern = "([\\w\\d]){8})"
            break
        case .badIsbn13:
            pattern = "([\\w\\d]){8})"
            break
        }
        return NSPredicate(format: "SELF MATCHES %@", pattern)
    }
}
