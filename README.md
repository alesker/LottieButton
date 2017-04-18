# LottieButton

[![CI Status](http://img.shields.io/travis/alesker/LottieButton.svg?style=flat)](https://travis-ci.org/alesker/LottieButton)
[![Version](https://img.shields.io/cocoapods/v/LottieButton.svg?style=flat)](http://cocoapods.org/pods/LottieButton)
[![License](https://img.shields.io/cocoapods/l/LottieButton.svg?style=flat)](http://cocoapods.org/pods/LottieButton)
[![Platform](https://img.shields.io/cocoapods/p/LottieButton.svg?style=flat)](http://cocoapods.org/pods/LottieButton)

LottieButton is dead simple UIButton subclass with support for playing Lottie-based animations between button's image view changes

## Usage
To add an animation set the `animationName` property. This will add a corresponding Lottie animation view as UIButton's subview.
Afterwards just call one of the 'playAnimation` methods to play the animation:
```swift
let lottieButton = LottieButton()
lottieButton.animationName = "animationName"
lottieButton.playAnimation()
```
That's it.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
iOS 8 and up.

## Installation

LottieButton is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "LottieButton"
```

## Author

Ilya Alesker, ilya.alesker@gmail.com

## License

LottieButton is available under the MIT license. See the LICENSE file for more info.
