# librlottie + Xcode

[![CI Status](http://img.shields.io/travis/SDWebImage/librlottie-Xcode.svg?style=flat)](https://travis-ci.org/SDWebImage/librlottie-Xcode)
[![Version](https://img.shields.io/cocoapods/v/librlottie.svg?style=flat)](http://cocoapods.org/pods/librlottie)
[![License](https://img.shields.io/cocoapods/l/librlottie.svg?style=flat)](http://cocoapods.org/pods/librlottie)
[![Platform](https://img.shields.io/cocoapods/p/librlottie.svg?style=flat)](http://cocoapods.org/pods/librlottie)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/SDWebImage/librlottie-Xcode)
[![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg)](https://swift.org/package-manager/)

A wrapper for [rlottie](https://github.com/Samsung/rlottie) + Xcode project.
This enables Carthage && SwiftPM support.

This repo also including the CocoaPods's spec file to use rlottie.

## Requirements

+ iOS 8
+ macOS 10.6
+ tvOS 9.0
+ watchOS 2.0

## Note

The Samsung's rlottie does not currently use any release tag, see: [rlottie#159](https://github.com/Samsung/rlottie/issues/159).

+ v0.1.0 use the commit HASH a717479

## Installation

### Carthage

librlottie is (via this repo) available through [Carthage](https://github.com/Carthage/Carthage).

```
github "SDWebImage/librlottie-Xcode"
```

### CocoaPods

librlottie is available through [CocoaPods](https://github.com/CocoaPods/CocoaPods).

```
pod 'librlottie'
```

### SwiftPM

librlottie is available through [Swift Package Manager](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg).

```swift
let package = Package(
    dependencies: [
        .package(url: "https://github.com/SDWebImage/librlottie-Xcode", from: "0.1.0")
    ],
    // ...
)
```

## Usage

Use librlottie as you would normally, this is just a repo that adds an Xcode proj.

For Swift Package Manager user, it's recommended to use the modular import instead of C headers.

+ Objective-C

```objective-c
@import librlottie;
// or if you don't use module
#import <rlottie/rlottie_capi.h>
```

+ Swift

```swift
import librlottie
```

## License

librlottie is available under the [Alliance for Open Media Patent License](https://aomedia.org/license/software-license/).


