<div align="center">
    <img width="200" height="200" src="https://github.com/rwbutler/AnimatedGradientView/raw/master/docs/images/animated-gradient-view-large-logo.png" alt="Animated Gradient View Logo">
</div>
<div align="center">
    <img width="800" src="https://github.com/rwbutler/AnimatedGradientView/raw/master/docs/images/animated-gradient-view-text-banner.png" alt="Animated Gradient View">
</div>

[![CI Status](https://img.shields.io/travis/rwbutler/AnimatedGradientView.svg?style=flat)](https://travis-ci.org/rwbutler/AnimatedGradientView)
[![Version](https://img.shields.io/cocoapods/v/AnimatedGradientView.svg?style=flat)](https://cocoapods.org/pods/AnimatedGradientView)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Maintainability](https://api.codeclimate.com/v1/badges/a1bfd17cceb7ca5770b3/maintainability)](https://codeclimate.com/github/rwbutler/AnimatedGradientView/maintainability)
[![License](https://img.shields.io/cocoapods/l/AnimatedGradientView.svg?style=flat)](https://cocoapods.org/pods/AnimatedGradientView)
[![Platform](https://img.shields.io/cocoapods/p/AnimatedGradientView.svg?style=flat)](https://cocoapods.org/pods/AnimatedGradientView)
[![Swift 5.0](https://img.shields.io/badge/Swift-5.0-orange.svg?style=flat)](https://swift.org/)
[![Reviewed by Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com)

AnimatedGradientView is a UIView subclass which makes it simple to add animated gradients to your iOS app. It is written purely in Swift. [Further documentation available as part of this blog post](https://medium.com/@rwbutler/animated-gradients-on-ios-aa117551e533).

## Features

- [x] Easily create animated or static gradients.
- [x] Configurable gradient direction.
- [x] Use hex values, RGB values or names to specify colors (including color names specified in asset catalogs on iOS 11 or higher).
- [x] Supports animating between gradients with a varying number of colors.
- [x] Supports axial, radial and on iOS 12, conic gradients.
- [x] Auto-animate or animate manually using the `startAnimating` and `stopAnimating` functions.
- [x] Loop animations with the `autoRepeat` property.

![Example](https://github.com/rwbutler/AnimatedGradientView/raw/master/docs/images/example.gif)

To learn more about how to use AnimatedGradientView, check out the [blog post](https://medium.com/@rwbutler/animated-gradients-on-ios-aa117551e533), take a look at the [example app](./Example/), the demo over on [Appetize.io](https://appetize.io/app/ytxjjp34nxxuac0cm95rf7nbvm?device=iphonexsmax&scale=75&orientation=portrait&osVersion=12.1), or make use of the table of contents below:

- [Features](#features)
- [Quickstart](#quickstart)
- [Requirements](#requirements)
- [Installation](#installation)
	- [Cocoapods](#cocoapods)
	- [Carthage](#carthage)
- [Usage](#usage)
	- [Static Gradient](#static-gradients)
	    - [Gradient Types](#gradient-types)
- [Author](#author)
- [License](#license)
- [Additional Software](#additional-software)
	- [Frameworks](#frameworks)
	- [Tools](#tools)

## What's new in AnimatedGradientView 3.0.0?

AnimatedGradientView 3.0.0 provides support for Xcode 12 and raises the minimum deployment target to iOS 9 (dropping support for iOS 8).

## Quickstart

Creating and adding a new `AnimatedGradientView` as a subview is as simple as follows:

```swift
let animatedGradient = AnimatedGradientView(frame: view.bounds)
animatedGradient.direction = .up
animatedGradient.animationValues = [(colors: ["#2BC0E4", "#EAECC6"], .up, .axial),
(colors: ["#833ab4", "#fd1d1d", "#fcb045"], .right, .axial),
(colors: ["#003973", "#E5E5BE"], .down, .axial),
(colors: ["#1E9600", "#FFF200", "#FF0000"], .left, .axial)]
view.addSubview(animatedGradient)
```

You'll also need to remember to import the framework using `import AnimatedGradientView`.

## Requirements
AnimatedGradientView is written in Swift 5.0 and is available on iOS 8.0 or higher.

## Installation

### Cocoapods

[CocoaPods](http://cocoapods.org) is a dependency manager which integrates dependencies into your Xcode workspace. To install it using [RubyGems](https://rubygems.org/) run:

```bash
gem install cocoapods
```

To install AnimatedGradientView using Cocoapods, simply add the following line to your Podfile:

```ruby
pod "AnimatedGradientView"
```

Then run the command:

```bash
pod install
```

For more information [see here](https://cocoapods.org/#getstarted).

### Carthage

Carthage is a dependency manager which produces a binary for manual integration into your project. It can be installed via [Homebrew](https://brew.sh/) using the commands:

```bash
brew update
brew install carthage
```

In order to integrate AnimatedGradientView into your project via Carthage, add the following line to your project's Cartfile:

```ogdl
github "rwbutler/AnimatedGradientView"
```

From the macOS Terminal run `carthage update --platform iOS` to build the framework then drag `AnimatedGradientView.framework` into your Xcode project.

For more information [see here](https://github.com/Carthage/Carthage#quick-start).

### Swift Package Manager

Swift Package Manager is a dependency manager built right into Xcode 11 and higher. From the File menu, add a new Swift Package dependency to your project and paste in this project's Git URL.

## Usage
### Static Gradients

If all you need is a gradient without animation this is easily achieved by setting the `colors` property to an array of `UIColor` as follows:

```swift
let gradient = AnimatedGradientView(frame: view.bounds)
gradient.colors = [[UIColor.blue, UIColor.red]]
gradient.direction = .up
view.addSubview(gradient)
```

The `colors` property is actually an array of `UIColor` arrays. If further `UIColor` arrays are specified then animation will occur between them. Using the `direction` property it also possible to define the direction of the gradient.

If it is more convenient to work with hex color strings rather than `UIColor` then make use of the `colorStrings` property instead as follows:

```swift
let gradient = AnimatedGradientView(frame: view.bounds)
gradient.colorStrings = [["#3224AE", "#FF66FF"]]
gradient.direction = .up
view.addSubview(gradient)
```

#### Gradient Types

AnimatedGradientView supports three types of gradients which can be set using the `type` property.

```swift
let gradient = AnimatedGradientView(frame: view.bounds)
gradient.autoAnimate = false
gradient.colorStrings = [["#3224AE", "#FF66FF"]]
gradient.type = .axial
view.addSubview(gradient)
```

The three gradient types supported are:

##### Axial
This is your standard linear gradient blending between color stops from the start point to the end point.

<div align="center">
    <img width="200" height="200" src="https://github.com/rwbutler/AnimatedGradientView/raw/master/docs/images/axial.png" alt="Axial Gradient">
</div>

#### Radial

 The gradient appears to radiate outwards from the start point (at the center) towards the end point in a circular fashion blending between the color stops from the start point to end point as with a linear gradient.

<div align="center">
    <img width="200" height="200" src="https://github.com/rwbutler/AnimatedGradientView/raw/master/docs/images/radial.png" alt="Radial Gradient">
</div>

#### Conic

 This type of gradient is only available from iOS 12 onwards. It is similar to a radial gradient in that the start point represents the center of the circle and the end point represents a point on the outer edge. However, whilst a radial gradient blends between color stops from the start point to the end point (from the center to the outer edge), a conic gradient places the color stops along the outer edge of the circle blending between the color stops from 0 degrees to 360 degrees.

<div align="center">
    <img width="200" height="200" src="https://github.com/rwbutler/AnimatedGradientView/raw/master/docs/images/conic.png" alt="Conic Gradient">
</div>

## Author

[Ross Butler](https://github.com/rwbutler)

## License

AnimatedGradientView is available under the MIT license. See the [LICENSE file](./LICENSE) for more info.

## Additional Software

### Controls

* [AnimatedGradientView](https://github.com/rwbutler/AnimatedGradientView) - Powerful gradient animations made simple for iOS.

|[AnimatedGradientView](https://github.com/rwbutler/AnimatedGradientView) |
|:-------------------------:|
|[![AnimatedGradientView](https://raw.githubusercontent.com/rwbutler/AnimatedGradientView/master/docs/images/animated-gradient-view-logo.png)](https://github.com/rwbutler/AnimatedGradientView) 

### Frameworks

* [Cheats](https://github.com/rwbutler/Cheats) - Retro cheat codes for modern iOS apps.
* [Connectivity](https://github.com/rwbutler/Connectivity) - Improves on Reachability for determining Internet connectivity in your iOS application.
* [FeatureFlags](https://github.com/rwbutler/FeatureFlags) - Allows developers to configure feature flags, run multiple A/B or MVT tests using a bundled / remotely-hosted JSON configuration file.
* [FlexibleRowHeightGridLayout](https://github.com/rwbutler/FlexibleRowHeightGridLayout) - A UICollectionView grid layout designed to support Dynamic Type by allowing the height of each row to size to fit content.
* [Hash](https://github.com/rwbutler/Hash) - Lightweight means of generating message digests and HMACs using popular hash functions including MD5, SHA-1, SHA-256.
* [Skylark](https://github.com/rwbutler/Skylark) - Fully Swift BDD testing framework for writing Cucumber scenarios using Gherkin syntax.
* [TailorSwift](https://github.com/rwbutler/TailorSwift) - A collection of useful Swift Core Library / Foundation framework extensions.
* [TypographyKit](https://github.com/rwbutler/TypographyKit) - Consistent & accessible visual styling on iOS with Dynamic Type support.
* [Updates](https://github.com/rwbutler/Updates) - Automatically detects app updates and gently prompts users to update.

|[Cheats](https://github.com/rwbutler/Cheats) |[Connectivity](https://github.com/rwbutler/Connectivity) | [FeatureFlags](https://github.com/rwbutler/FeatureFlags) | [Skylark](https://github.com/rwbutler/Skylark) | [TypographyKit](https://github.com/rwbutler/TypographyKit) | [Updates](https://github.com/rwbutler/Updates) |
|:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:|
|[![Cheats](https://raw.githubusercontent.com/rwbutler/Cheats/master/docs/images/cheats-logo.png)](https://github.com/rwbutler/Cheats) |[![Connectivity](https://github.com/rwbutler/Connectivity/raw/master/ConnectivityLogo.png)](https://github.com/rwbutler/Connectivity) | [![FeatureFlags](https://raw.githubusercontent.com/rwbutler/FeatureFlags/master/docs/images/feature-flags-logo.png)](https://github.com/rwbutler/FeatureFlags) | [![Skylark](https://github.com/rwbutler/Skylark/raw/master/SkylarkLogo.png)](https://github.com/rwbutler/Skylark) | [![TypographyKit](https://raw.githubusercontent.com/rwbutler/TypographyKit/master/docs/images/typography-kit-logo.png)](https://github.com/rwbutler/TypographyKit) | [![Updates](https://raw.githubusercontent.com/rwbutler/Updates/master/docs/images/updates-logo.png)](https://github.com/rwbutler/Updates)

### Tools

* [Clear DerivedData](https://github.com/rwbutler/ClearDerivedData) - Utility to quickly clear your DerivedData directory simply by typing `cdd` from the Terminal.
* [Config Validator](https://github.com/rwbutler/ConfigValidator) - Config Validator validates & uploads your configuration files and cache clears your CDN as part of your CI process.
* [IPA Uploader](https://github.com/rwbutler/IPAUploader) - Uploads your apps to TestFlight & App Store.
* [Palette](https://github.com/rwbutler/TypographyKitPalette) - Makes your [TypographyKit](https://github.com/rwbutler/TypographyKit) color palette available in Xcode Interface Builder.

|[Config Validator](https://github.com/rwbutler/ConfigValidator) | [IPA Uploader](https://github.com/rwbutler/IPAUploader) | [Palette](https://github.com/rwbutler/TypographyKitPalette)|
|:-------------------------:|:-------------------------:|:-------------------------:|
|[![Config Validator](https://raw.githubusercontent.com/rwbutler/ConfigValidator/master/docs/images/config-validator-logo.png)](https://github.com/rwbutler/ConfigValidator) | [![IPA Uploader](https://raw.githubusercontent.com/rwbutler/IPAUploader/master/docs/images/ipa-uploader-logo.png)](https://github.com/rwbutler/IPAUploader) | [![Palette](https://raw.githubusercontent.com/rwbutler/TypographyKitPalette/master/docs/images/typography-kit-palette-logo.png)](https://github.com/rwbutler/TypographyKitPalette)
