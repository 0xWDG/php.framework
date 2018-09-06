// Swift 3.0 Alpha version
// Broken: SHA1, CRC32
import PackageDescription

let package = Package(
    name: "PHPFramework",
    dependencies: [
        .Package(url: "git@github.com:wdg/php.framework.git", versions: Version(1,0,0)..<Version(2,0,0)),
    ]
)
