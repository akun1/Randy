<img src="./randy_icon.png" alt="drawing" width="200"/>

# Randy

[![Build Status](https://travis-ci.org/akun1/Randy.svg?branch=master)](https://travis-ci.org/akun1/Randy)
[![Version](https://img.shields.io/cocoapods/v/Randy.svg?style=flat)](https://cocoapods.org/pods/Randy)
[![License](https://img.shields.io/cocoapods/l/Randy.svg?style=flat)](https://cocoapods.org/pods/Randy)
[![Platform](https://img.shields.io/cocoapods/p/Randy.svg?style=flat)](https://cocoapods.org/pods/Randy)

----------------

An easy to use Swift framework generating random values for testing and development.

|         | Main Features  |
----------|-----------------
✌️ | Say goodbye to hard coding random values during testing
✅| Unit tested
😀| Support for 16+ types of form text
❤️ | Simple syntax for ease of use
🐤 | Written in pure Swift


## Usage

As of now, there's a default random generator. All you have to do is ```import Randy``` on the file you need to use it in and then call the ```getDefaultRandom``` function with the type of random text you want as the argument. All the types of random text can be found below. Here are all the calls and sample outputs:

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

## To Do / To Build On:

* Unit tests for each type (Up to date as of 4/29/2019)
* Additional types such as month, valid ISBN, credit card expiration date.
* Solve issues.
* Add Jazzy docs.

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
