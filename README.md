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

+ iOS 9
+ macOS 10.10
+ tvOS 9.0
+ watchOS 2.0

## Note

The Samsung's rlottie now release the first tag version, see: [rlottie#159](https://github.com/Samsung/rlottie/issues/159). This repo match the same version tag as upstream mostly.

However, if there are serious bugs due to the integration issue on Apple's platform (rlottie does not provide official iOS support), we may release patch version, which does not match the upstream, the upstream commit HASH is provided here:

+ 0.1.0: `a717479`
+ 0.2.1: `3cd0015`

If you're facing cache issues. Please update your Package Manager by following the steps:

+ CocoaPods: `pod cache clean librlottie` && `pod update`
+ Carthage: `rm -rf ~/Library/Caches/org.carthage.CarthageKit` && `carthage update --cache-builds`
+ SwiftPM: `Xcode Clean`

## For iOS and Simulator

The rlottie source code use [C++ Thread Local](https://cppreference.com/w/cpp/keyword/thread_local) feature. However, iOS use system provided ABI for C++ thread local support but not language side, which works only on iOS 9.0+, and does not support 32-bit i386 Simulator.

This is why we have to limit the min deployment target version on iOS. Learn more here: [Why does Apple clang disallow C++11 thread_local when 'official' clang supports it](https://stackoverflow.com/questions/28094794/why-does-apple-clang-disallow-c11-thread-local-when-official-clang-supports)

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
        .package(url: "https://github.com/SDWebImage/librlottie-Xcode", from: "0.2.0")
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

## For C++ user

The rlottie umbrella header and modulemap does not contains C++ header `rlottie.h`, because Swift/Objective-C can not import C++ interface (Objective-C++ can, but with clang module disabled).

If you need the C++ interface, use the public header search path to `include`, make sure you have disable module as well.

## License

librlottie is available under the [LGPL License](https://github.com/Samsung/rlottie/blob/master/COPYING).


