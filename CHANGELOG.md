# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [4.0.0] - 2023-03-09
### Changed
- Updated base deployment target to 11.0 to address warnings in Xcode 14.

## [3.1.1] - 2021-04-30
### Changed
- When setting the `colors` property the gradient now updates to match.

## [3.1.0] - 2021-01-02
### Added
- Support for pausing and resuming animation.
- Support for auto-resuming animation on application becoming active.

## [3.0.0] - 2020-09-22
### Added
- Support for Xcode 12.

### Changed
- Dropped support for iOS 8.

## [2.1.0] - 2019-11-12
### Added
- Support for [Swift Package Manager](https://swift.org/package-manager/).

## [2.0.0] - 2019-07-22
### Changed
- Updated to Swift 5.0.

## [1.1.1] - 2019-03-09
### Changed
- Ensure that start point update for gradient type change is animated.

## [1.1.0] - 2019-02-26
### Added
- Ability to animate between custom locations.
### Changed
- Improvements to animation smoothness.
- Fixed an issue whereby if `autoRepeat` was set to `false` then only one animation would be performed rather than the entire sequence.

## [1.0.1] - 2019-02-23
### Changed
- Fixed an issue where an incorrect start point for axial gradients was returned.

## [1.0.0] - 2019-02-21
### Changed
- Improved documentation.

## [0.1.0] - 2019-02-21
### Added
- Initial release.
