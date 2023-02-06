// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KMMProExtractModuleAndroid/wiggles/spikeysanju/dev/shared-kmmbridge/1.0.1/shared-kmmbridge-1.0.1.zip"
let remoteKotlinChecksum = "b7ea519f66fc3568890fba64dab15998706338425522f4b209fd4b376e3b0e59"
let packageName = "SharedPuppyDB"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)