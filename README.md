# PHPFramework

<img src='https://raw.githubusercontent.com/0xWDG/PHPFramework/master/Swift 2/PHPFramework/PHPFramework/Assets/phpswift.png'>

**PHP In Swift**

*A Swift framework to use the most common PHP functions (Based on PHP7)*

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2F0xWDG%2FPHPFramework%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/0xWDG/PHPFramework)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2F0xWDG%2FPHPFramework%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/0xWDG/PHPFramework)
[![Swift Package Manager](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)](https://swift.org/package-manager)
![License](https://img.shields.io/github/license/0xWDG/PHPFramework)

\* Please note, this project contains a lot of Swift4 code, i started this project when i started Swift around 9-10 years ago, the quality is sub-optimal.
In 2025 I made it a SPM Package, and i'll try to get some more things working, I appreciate any help you can provide!

## Requirements

- Swift 5.9+ (Xcode 15+)
- iOS 13+, macOS 10.15+

## Installation (Pakage.swift)

```swift
dependencies: [
    .package(url: "https://github.com/0xWDG/PHPFramework.git", branch: "main"),
],
targets: [
    .target(name: "MyTarget", dependencies: [
        .product(name: "PHPFramework", package: "PHPFramework"),
    ]),
]
```

## Installation (Xcode)

1. In Xcode, open your project and navigate to **File** → **Swift Packages** → **Add Package Dependency...**
2. Paste the repository URL (`https://github.com/0xWDG/SwiftCronParser`) and click **Next**.
3. Click **Finish**.


# Supported PHP Functions

<table>
<tr><td>Status</td><td>TODO</td><td>Item</td></tr>
<tr><td><ul><li>[x] 3924 of 3924</li></ul></td><td>0</td><td><a target='_blank' href='https://github.com/0xWDG/PHPFramework/issues/3'>Predefined Constants</a></td></tr>
<tr><td><ul><li>[x] 57 of 57</li></ul></td><td>0</td><td><a target='_blank' href='https://github.com/0xWDG/PHPFramework/issues/2'>Supported PHP Options/info functions</a></td></tr>
<tr><td><ul><li>[ ] 90 of 98</li></ul></td><td>8</td><td><a target='_blank' href='https://github.com/0xWDG/PHPFramework/issues/1'>Supported string functions</a></td></tr>
<tr><td><ul><li>[ ] 3 of 79</li></ul></td><td>76</td><td><a target='_blank' href='https://github.com/0xWDG/PHPFramework/issues/4'>Supported Array Functions</a></td></tr>
<tr><td><ul><li>[x] 34 of 34</li></ul></td><td>0</td><td><a target='_blank' href='https://github.com/0xWDG/PHPFramework/issues/5'>Supported Variable Functions</a></td></tr>
<tr><td><ul><li>[ ] 0 of 51</li></ul></td><td>51</td><td><a target='_blank' href='https://github.com/0xWDG/PHPFramework/issues/6'>Supported DateTime Functions</a></td></tr>
<tr><td><ul><li>[x] 9 of 9</li></ul></td><td>0</td><td><a target='_blank' href='https://github.com/0xWDG/PHPFramework/issues/7'>Supported Directory Functions</a></td></tr>
<tr><td><ul><li>[ ] 0 of 81</li></ul></td><td>81</td><td><a target='_blank' href='https://github.com/0xWDG/PHPFramework/issues/8'>Supported FileSystem Functions</a></td></tr>
<tr><td><hr></td><td><hr></td><td><hr></td></tr>
<tr><td><ul><li>[ ] 193 of 409</li></ul></td><td>216</td><td>Functions total build (± 44%)</td></tr>
</table>

<i>Please note: this list will be updated once upon a time, this list may not be the most recent, please go to the specific item for the latest info</i>

<b>Last update: 02-JAN-2025 GMT+1 (Europe/Amsterdam)</b>

## Contact

🦋 [@0xWDG](https://bsky.app/profile/0xWDG.bsky.social)
🐘 [mastodon.social/@0xWDG](https://mastodon.social/@0xWDG)
🐦 [@0xWDG](https://x.com/0xWDG)
🧵 [@0xWDG](https://www.threads.net/@0xWDG)
🌐 [wesleydegroot.nl](https://wesleydegroot.nl)
🤖 [Discord](https://discordapp.com/users/918438083861573692)

Interested learning more about Swift? [Check out my blog](https://wesleydegroot.nl/blog/).
