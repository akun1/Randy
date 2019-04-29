import XCTest
import Randy

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDefaultRandom(type: FormType) {
        
    }
    
    //    case username
    //    case password
    //    case email
    //    case phoneNumber
    //    case day
    //    case year
    //
    //    case address
    //    case zip
    //
    //    case creditCardNumber
    //    case creditCardSecurityCode
    //
    //    case socialSecurityNumber
    //
    //    case driversLicense
    //    case carLicensePlateNumber
    //    case carVinNumberPre1981
    //    case carVinNumberPost1981
    //
    //    case badIsbn13
    
    
    func getPredicate(type: FormType) -> NSPredicate {
        var pattern: String = ""
        switch type {
        case .username:
            pattern = "([\\w\\d]){8})"
            break
        case .password:
            pattern = "([\\w\\d]){8})"
            break
        case .email:
            pattern = "([\\w\\d]){8})"
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
        return NSPredicate(format: "self MATCHES [c] %@", pattern)
    }
}
//    if predicate.evaluate(with: "(888) 555-1111") {
//    print("Valid")
//    }
//    else {
//    print("Invalid")
//}
