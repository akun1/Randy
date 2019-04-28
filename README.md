# Randy

[![CI Status](https://img.shields.io/travis/akashkundu92@gmail.com/Randy.svg?style=flat)](https://travis-ci.org/akashkundu92@gmail.com/Randy)
[![Version](https://img.shields.io/cocoapods/v/Randy.svg?style=flat)](https://cocoapods.org/pods/Randy)
[![License](https://img.shields.io/cocoapods/l/Randy.svg?style=flat)](https://cocoapods.org/pods/Randy)
[![Platform](https://img.shields.io/cocoapods/p/Randy.svg?style=flat)](https://cocoapods.org/pods/Randy)

## Usage

As of now, there's a default random generator. Here are all the calls and sample outputs:

**Calls:**

```
print("Username: " + getDefaultRandom(type: .username))
print("Password: " + getDefaultRandom(type: .password))
print("Email: " + getDefaultRandom(type: .email))
print("Phone Number: " + getDefaultRandom(type: .phoneNumber))
print("Day: " + getDefaultRandom(type: .day))
print("Year: " + getDefaultRandom(type: .year))
print("Address: " + getDefaultRandom(type: .address))
print("ZIP: " + getDefaultRandom(type: .zip))
print("Credit Card Number: " + getDefaultRandom(type: .creditCardNumber))
print("Credit Card Security Code: " + getDefaultRandom(type: .creditCardSecurityCode))
print("Social Security Number: " + getDefaultRandom(type: .socialSecurityNumber))
print("Drivers License: " + getDefaultRandom(type: .driversLicense))
print("Car License Plate Number: " + getDefaultRandom(type: .carLicensePlateNumber))
print("Car VIN Pre-1981: " + getDefaultRandom(type: .carVinNumberPre1981))
print("Car VIN Post-1981: " + getDefaultRandom(type: .carVinNumberPost1981))
print("Bad ISBN13: " + getDefaultRandom(type: .badIsbn13))
```

**Outputs:**

```
Username: wLSpg4ZU
Password: ujbtrsSyv$
Email: eOvj5tOY@gmail.com
Phone Number: 5264209312
Day: Monday
Year: 7310
Address: 2025 leeejy Drive
ZIP: 64876
Credit Card Number: 4851707637446305
Credit Card Security Code: 413
Social Security Number: 418852351
Drivers License: 98396247
Car License Plate Number: 3ULWGGF
Car VIN Pre-1981: 00081029277
Car VIN Post-1981: 58672800222630652
Bad ISBN13: 9786711130335
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## To Do:

* Unit tests for each type.
* Additional types such as month, valid ISBN, credit card expiration date.

## Installation

Randy is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Randy'
```

## Author

dev.akashkundu@gmail.com

## License

Randy is available under the MIT license. See the LICENSE file for more info.
